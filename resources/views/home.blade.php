@extends('layouts.standard')


@section('content')
   <h1 class="center">Move YourSelf Training</h1>

   <img src="{{URL::asset('storage/image/good-faces-640x426.jpg')}}" />

    <h2 class="center">
        MYST<br/>la plateforme qui vous aide à progresser
    </h2>
    <p>
        Prenez le temps de revenir à la base :
        <ul>
            <li>Choisissez un cours</li>
           <li>Démarrer la leçon</li>
           <li>Vérifier votre compréhension</li>
        </ul>

        Et à la fin de chaque cours vous aurez une évalution de vos connaissances.
    </p>

   <a href="{{ route('dashboard.index') }}" class="btn btn-large">Accédez aux cours</a>

@endsection
