@extends('layouts.standard')


@section('content')
    <h1 class="center">TABLEAU DE BORD</h1>

    <ul class="collection with-header">
        @foreach($courses as $course)
            <li class="collection-item">
                <div>{{ $course->name_fr }}
                    <a href="#" class="secondary-content">
                        <i class="material-icons">send</i>
                    </a>
                </div>
            </li>



        @endforeach
    </ul>


@endsection
