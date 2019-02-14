const mix = require('laravel-mix');

/*
 |--------------------------------------------------------------------------
 | Mix Asset Management
 |--------------------------------------------------------------------------
 |
 | Mix provides a clean, fluent API for defining some Webpack build steps
 | for your Laravel application. By default, we are compiling the Sass
 | file for the application as well as bundling up all the JS files.
 |
 */

mix.js('resources/js/app.js', 'public/js')
   .sass('resources/sass/app.scss', 'public/css');

   //Bootstrap 3
// mix.js('resources/js/bootstrap3/app.js', 'public/js/bootstrap3/')
//    .sass('resources/sass/bootstrap3/app.scss', 'public/css/bootstrap3/');

mix.browserSync({
    proxy: '127.0.0.1:8000'
})
