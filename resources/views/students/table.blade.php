@foreach($students as $std)
    <tr>
        <td>{{ $std->id }}</td>
        <td>{{ $std->name }}</td>
        <td>{{ $std->address }}</td>
        <td>{{ $std->age }}</td>
        <td>{{ $std->birth_date }}</td>
        <td>
            <form action="{{ route('students.delete', $std->id) }}" method="post">
                <input type="hidden" name="id" value="{{ $std->id }}">
                @csrf
                <button type="submit" id="delete{{$std->id}}" class="btn-delete">delete</button>
            </form>
        </td>
    </tr>
@endforeach
<tr>
    <td colspan="100%" id="pagination">
        {{ $students->appends(['name'=> $name])->links() }}

    </td>
</tr>
