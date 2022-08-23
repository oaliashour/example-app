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
            <tbody>

            </tbody>
        </table>
    </div>
    <script
        src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
        crossorigin="anonymous"></script>
    <script src="http://malsup.github.io/jquery.blockUI.js"></script>
    <script>
        $(document).ready(function () {
            loadPage();


        });

        $(document).on('input', '[name=name]', function (event) {
            event.preventDefault();
            const name = $(this).val()
            loadPage({
                name: name,
                page: 1
            });
        })
        $(document).on('click', '[role="navigation"] a', function (event) {
            event.preventDefault();

            const urlParts = $(this).attr('href').split('?');
            const urlParams = new URLSearchParams(urlParts[1]);
            const params = Object.fromEntries(urlParams); // {abc: "foo", def: "[asf]", xyz: "5"}
            loadPage(params);
        });


        function loadPage(mParams) {
            const serializedParams = $.param(mParams);
            debugger;
            $.ajax({
                url: '{{ route('students.table') }}' + '?' + serializedParams,
                //url: '{{ route('students.table') }}' + '?page=' + page + '&name=' + name,
                data: {},
                beforeSend: function () {
                    $('body').block({
                        message: '<h1>Processing</h1>',
                        css: {border: '3px solid #a00'}
                    });
                },
                success: function (result) {
                    $('#table-container tbody').html(result);
                },
                complete: function () {
                    $('body').unblock();
                }
            });

        }
    </script>
</x-app-layout>
