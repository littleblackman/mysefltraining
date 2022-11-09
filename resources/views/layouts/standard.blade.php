<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Move Your Self Training</title>

    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="css/normalize.css" rel="stylesheet">
    <link href="css/materialize.css" rel="stylesheet">
    <link href="css/app.css" rel="stylesheet">

</head>

<body>
    <div id="overScreen"></div>
    <div id="splashScreen"></div>

    <header>
        <div id="topHeader">
            <div class="title">
                <a href="{{route('home')}}">
                    MYST
                </a>
            </div>
            <div class="icon_menu">
                <i class="material-icons">menu</i>
            </div>
        </div>
    </header>
    <main>
        @yield('content')
    </main>
    <footer>

    </footer>

</body>

</html>
