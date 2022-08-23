@foreach($students as $std)
    <tr>
        <td>{{ $std->id }}</td>
        <td>{{ $std->name }}</td>
        <td>{{ $std->address }}</td>
        <td>{{ $std->age }}</td>
        <td>{{ $std->birth_date }}</td>
        <td>
            <form action="{{ route('students.delete', [$std->id]) }}" method="post"
                  onsubmit="return confirm('are u sure ?')">
                @csrf
                @method('delete')
                <button type="submit">Delete</button>
            </form>
        </td>
    </tr>
@endforeach
<tr>
    <td colspan="100%"> {{ $students->appends([
    'name'=>$name
])->links() }}</td>
</tr>
