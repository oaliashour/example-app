<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Dashboard') }}
        </h2>
    </x-slot>
    @if(session('success'))
        <p>{{ session('success') }}</p>
    @endif

    <div id="table-container">

        <table cellpadding="8" cellspacing="8" border="1">
            <thead>

            <tr>
                <th>Id</th>
                <th>name</th>
                <th>address</th>
                <th>age</th>
                <th>dob</th>
                <th></th>
            </tr>
            <tr>
                <th></th>
                <th><input type="text" name="name"></th>
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
    <p></p>
    <script
        src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
        crossorigin="anonymous"></script>
    <script src="http://malsup.github.io/jquery.blockUI.js"></script>
    <script>
        $(document).ready(function () {

            loadPage();

            //
            // $('[name="id"]').each(function (el, i){
            //     $(this).closest('form').find('button').on('click', function(){
            //
            //     })
            // });


        });

        $(document).on('input', '[name="name"]', function (event) {
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


    </script>
</x-app-layout>
