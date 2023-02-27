<?php

namespace App\Http\Controllers;

use App\Models\Course;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {

        $courses = Course::where('status', '=', 'online')->orderBy('course_order')->get();
        return view('dashboard.index', ['courses' => $courses]);
    }


}
