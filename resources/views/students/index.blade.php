<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Dashboard') }}
        </h2>
    </x-slot>
    @if(session('success'))
        <p>{{ session('success') }}</p>
    @endif
    <div class="container mt-5">
        <div class="card">
            <div class="card-header">
                <!-- Button trigger modal -->
                <button id="add-new" type="button" class="btn btn-primary">
                    Add
                </button>
            </div>
            <div id="table-container">

                <table class="table table-bordered">
                    <thead>

                    <tr>
                        <th></th>
                        <th>Id</th>
                        <th>name</th>
                        <th>address</th>
                        <th>age</th>
                        <th>dob</th>
                        <th></th>
                    </tr>
                    <tr>
                        <th></th>
                        <th><input type="text" name="search"></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody id="x-tbody">

                    </tbody>
                </table>
            </div>

        </div>
    </div>
    <p></p>


    <!-- Modal -->
    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
         aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog">
            <form action="{{ route('students.store') }}" method="post" id="std-form" class="row g-3">
                <input type="hidden" name="id">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="staticBackdropLabel">Add student</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        @csrf

                        <div class="col-md-12">
                            <label for="name" class="form-label">Name</label>
                            <input type="text" class="form-control" name="name">
                        </div>

                        <div class="col-md-12">
                            <label for="mobile" class="form-label">Mobile</label>
                            <input type="text" class="form-control" name="mobile">
                        </div>
                        <div class="col-md-12">
                            <label for="address" class="form-label">Address</label>
                            <input type="text" class="form-control" name="address">
                        </div>

                        <div class="col-md-12">
                            <label for="address" class="form-label">Birth Date</label>
                            <input type="date" class="form-control" name="birth_date">
                        </div>


                        <div class="col-md-12">
                            <label for="age" class="form-label">Age</label>
                            <input type="text" class="form-control" name="age">
                        </div>

                        <div class="col-md-12">
                            <label for="name" class="form-label">Profile image</label>
                            <input type="file" class="form-control" name="images[]" multiple>
                        </div>
                        <div class="col-md-12  mt-3">
                            <img src="" alt="" id="preview" width="100" height="100" class="img-thumbnail"
                                 style="display: none">
                        </div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Save</button>
                    </div>
                </div>
            </form>

        </div>
    </div>
    <script
        src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
        crossorigin="anonymous"></script>
    <script src="http://malsup.github.io/jquery.blockUI.js"></script>
    <script>

        $(document).on('change', '[name="image"]', function (evt) {
            const [file] = this.files
            if (file) {
                $('#preview')
                    .attr('src', URL.createObjectURL(file))
                    .show();
            }
        });
        $(document).ready(function () {

            loadPage();

            //
            // $('[name="id"]').each(function (el, i){
            //     $(this).closest('form').find('button').on('click', function(){
            //
            //     })
            // });


        });

        $(document).on('input', '[name="search"]', function (event) {
            const name = $(this).val();
            loadPage(null, name);
        });
        $(document).on('click', '.btn-delete', function (event) {
            event.preventDefault();
            const form = $(this).closest('form');
            const action = form.attr('action');
            const $tr = $(this).closest('tr');

            $.ajax({
                url: action,
                data: form.serialize(),
                type: 'DELETE',
                success: function () {
                    $tr.hide(1000, function () {
                        $(this).remove();
                    })

                }
            });
        });
        $(document).on('click', '#pagination a', function (event) {

            event.preventDefault();
            const url = $(this).attr('href');
            loadPage(url);
        });


        function loadPage(xUrl, name = '') {
            const initUrl = "{{ route('students.table') }}" + '?name=' + name
            $.ajax({
                url: xUrl ?? initUrl,
                success: function (result) {

                    $('#x-tbody').html(result);


                    // $('#pagination a').click(function (event) {
                    //     debugger;
                    // });
                }
            });
        }

        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('[name="_token"]').val()
            }
        });

        $('#std-form').on('submit', function (event) {
            event.preventDefault();
            const id = $(this).find('[name=id]').val();
            let url = $(this).attr('action');
            let xMethod = 'POST';

            if (id) {
                url = $('[in-editing]').attr('update-url');
                xMethod = 'PUT';
            }

            const fd = new FormData(this);
            fd.append('_method', xMethod)

            $.ajax({
                // url:url,
                url,
                method: 'POST',
                data: fd,
                contentType: false,
                processData: false,
                success: function (response) {
                    $('#staticBackdrop').modal('hide');
                    if (id) {
                        $('[in-editing]').closest('tr').replaceWith(createNewRow(response));
                    } else {
                        $('#x-tbody').prepend(createNewRow(response));

                    }

                }

            })
        });


        $(document).on('click', '#add-new', function (event) {
            $('#staticBackdrop form')[0].reset();
            $('#staticBackdrop').modal('show');
        });
        $(document).on('click', '.btn-edit', function (event) {
            event.preventDefault();
            $(this).attr('in-editing', true);
            $('#staticBackdrop').modal('show');
            const url = $(this).attr('show-url');
            $.ajax({
                url,
                success: function (response) {
                    $('#staticBackdrop [name=id]').val(response.id);
                    $('#staticBackdrop [name=name]').val(response.name);
                    $('#staticBackdrop [name=address]').val(response.address);
                    $('#staticBackdrop [name=age]').val(response.age);
                    $('#staticBackdrop [name=birth_date]').val(response.birth_date);
                    $('#staticBackdrop [name=mobile]').val(response.mobile);


                }
            })
        })

        function createNewRow(response) {
            // loadPage();
            const newRow = `<tr>
                        <td>${response.id}</td>
                        <td>${response.name}</td>
                        <td>${response.address}</td>
                        <td>${response.age}</td>
                        <td>${response.birth_date}</td>
                    <td></td>
                    <td>
                        <form action="http://localhost:8000/student/${response.id}" method="post">
                                <input type="hidden" name="_token" value="KZbi2uhBZVCJql3svDXquf756OMjkRm9dkMv5ytP">
                        <input type="hidden" name="_method" value="delete">
                        <button type="submit" class="btn btn-danger btn-sm btn-delete">delete</button>
                        </form>
                    </td>
<td>
<button type="button" class="btn btn-success btn-sm btn-edit" show-url="http://localhost:8000/student/130" update-url="http://localhost:8000/student/130">
                Edit
            </button>
</td>
                </tr>`;
            return newRow;
        }
    </script>
</x-app-layout>
