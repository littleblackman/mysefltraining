let mix = require('laravel-mix');

mix.js('resources/js/app.js', 'public/js').sourceMaps();
mix.js('resources/js/main.js', 'public/js').sourceMaps();;

mix.sass('resources/sass/normalize.scss', 'public/css').sourceMaps();
mix.sass('resources/sass/materialize/materialize.scss', 'public/css').sourceMaps();;
mix.sass('resources/sass/app.scss', 'public/css').sourceMaps();;

