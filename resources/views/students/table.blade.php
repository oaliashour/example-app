@foreach($students as $std)
    <tr>
        <td>{{ $std->id }}</td>
        <td>{{ $std->name }}</td>
        <td>{{ $std->address }}</td>
        <td>{{ $std->age }}</td>
        <td>{{ $std->birth_date->format('Y-m-d') }}</td>
        <td>{{ $std->university->name ?? '' }}</td>
        <td>
            <form action="{{ route('students.delete', $std->id) }}" method="post">
                <input type="hidden" name="id" value="{{ $std->id }}">
                @csrf
                @method('delete')
                <button type="submit" id="delete{{$std->id}}" class="btn btn-danger btn-sm btn-delete">delete</button>
            </form>
        </td>
        <td>
            <button type="button" class="btn btn-success btn-sm btn-edit"
                    show-url="{{ route('students.show',  $std->id) }}"
                    update-url="{{ route('students.update', $std->id) }}">
                Edit
            </button>
        </td>
    </tr>
@endforeach
<tr>
    <td colspan="100%" id="pagination">
        {{ $students->appends(['name'=> $name])->links() }}

    </td>
</tr>
