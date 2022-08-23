<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Dashboard') }}
        </h2>
    </x-slot>
    @if(session('success'))
        <p>{{ session('success') }}</p>
    @endif

    <form action="{{ route('students.store') }}" method="post" id="std-form">
        @csrf
        name: <input type="text" name="name"> <br>
        mobile: <input type="text" name="mobile"> <br>
        address: <input type="text" name="address"> <br>
        birth_date: <input type="date" name="birth_date"> <br>
        age: <input type="text" name="age"> <br>
        <button type="submit">submit</button>
    </form>

    <button id="load">Load from server</button>
    <table border="1" cellpadding="5" cellspacing="5" style="margin: 100px auto; width: 300px;">
        <tbody>
        <tr>
            <td id="load-result"></td>
        </tr>
        </tbody>
    </table>
    //"_token=0ck5lt7neuv8sfGWtGsbkEdcg4G60ZiVCQnNMXeQ&name=&mobile=&address=&birth_date=&age="

    <script
        src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#std-form').on('submit', function (event) {
                event.preventDefault();
                const form = $(this);
                const url = form.attr('action');
                const data = form.serialize();
                $.ajax({
                    url,
                    method: 'post',
                    data,
                    success: function (result) {
                        $('[name="name"]').val('');
                        $('[name="mobile"]').val('');
                        $('[name="address"]').val('');
                        $('[name="birth_date]').val('');
                        $('[name="age"]').val('');

                        toastr.options = {
                            "closeButton": true,
                            "newestOnTop": false,
                            "progressBar": true,
                            "positionClass": "toast-bottom-center",
                            "preventDuplicates": false,
                            "onclick": null,
                            "showDuration": "300",
                            "hideDuration": "1000",
                            "timeOut": "5000",
                            "extendedTimeOut": "1000",
                            "showEasing": "swing",
                            "hideEasing": "linear",
                            "showMethod": "fadeIn",
                            "hideMethod": "fadeOut"
                        }

                        toastr.success("data saved!");
                    }
                    //url: url

                });
            });

            $('#load').on('click', function (event) {
                event.preventDefault();

                $.ajax({
                    url: "{{ route('students.html-content') }}",
                    success: function (result) {
                        debugger;
                        const x = 'hello';
                        const y ='world';
                        const z = x + y;
                        console.log(z);
                        $('#load-result').html(result);
                    }
                })
            });
        });
    </script>
</x-app-layout>
