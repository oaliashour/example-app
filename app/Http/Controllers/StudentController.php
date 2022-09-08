<?php

namespace App\Http\Controllers;

use App\Models\Student;
use Illuminate\Http\Request;

class StudentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('students.index', []);
    }


    public function table(Request $request)
    {

        $students = Student::with('university')->orderByDesc('id');


        $students->when($request->input('name'), function ($query, $xName) {
            $query->where('name', 'LIKE', "%$xName%");
        });

        return view('students.table', [
            'students' => $students->paginate(),
            'name' => $request->input('name')
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('students.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
//dd($request->all());
        $images = [];
        foreach ($request->file('images') as $image) {
            $path = $request->file('image')->store('/', [
                'disk' => 'public'
            ]);
            $images[] = $path;

        }

        $request->merge([
            'profile_image' => implode(',',$images),
        ]);

//        $request->profile_image = $path;


        $student = Student::create($request->all());

        return $student;
    }

    /**
     * Display the specified resource.
     *
     * @param \App\Models\Student $student
     * @return \Illuminate\Http\Response
     */
    public function show(Student $student)
    {
        return $student;
    }


    public function htmlContent()
    {
        return view('students.html-content');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param \App\Models\Student $student
     * @return \Illuminate\Http\Response
     */
    public function edit(Student $student)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param \App\Models\Student $student
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Student $student)
    {
        if ($request->hasFile('image')) {
            $path = $request->file('image')->store('/', [
                'disk' => 'public'
            ]);
//dd($path);
            $request->merge([
                'profile_image' => $path,
            ]);
        }
        $student->update($request->all());
        return $student;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \App\Models\Student $student
     * @return \Illuminate\Http\Response
     */
    public function destroy(Student $student)
    {
        $student->delete();
        return $student;
    }
}
