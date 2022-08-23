<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Models\Course;
use App\Models\Student;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {

        if (!\App\Models\University::where('name', 'IUG')->exists()) {
            \App\Models\University::factory()->create([
                'name' => 'IUG',

            ]);
        }
        \App\Models\User::factory(10)->create();

        \App\Models\Student::factory(20)->create();

//        \App\Models\User::factory()->create([
//            'name' => 'Test User',
//            'email' => 'test@example.com',
//        ]);


        if (!\App\Models\Course::where('name', 'Math')->exists()) {
            \App\Models\Course::factory()->create([
                'name' => 'Math',

            ]);
        }
        $c = Course::first();
        foreach (Student::all() as $std) {
            $c->students()->attach($std);
            //$std->cousers()->attcah($c);
        }

    }
}
