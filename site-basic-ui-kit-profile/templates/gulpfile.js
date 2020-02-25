const gulp = require('gulp');
const sass = require('gulp-sass');
const autoprefixer = require('gulp-autoprefixer');
const cleanCSS = require('gulp-clean-css');
const concat = require('gulp-concat');
const rename = require('gulp-rename');
const uglify = require('gulp-uglify');
const livereload = require('gulp-livereload');

// Ouptut destination for css and js
const fileDest = './public';

//script import paths
const jsFiles = [
    './node_modules/uikit/dist/js/uikit.js',
    './node_modules/uikit/dist/js/uikit-icons.js',
    './js/app.js'
];

function php() {
    return gulp.src('*.php')
        .pipe(livereload());
}

function scss() {
    return gulp.src('sass/app.scss')
        .pipe(sass().on('error', sass.logError))
        .pipe(autoprefixer({
            browsers: ['last 2 versions', 'ie >= 9', 'Android >= 2.3', 'ios >= 7'],
            cascade: false
        }))
        .pipe(cleanCSS({
            level: {
                1: {
                    specialComments: false
                }
            }
        }))
        .pipe(gulp.dest(fileDest));
}

function js() {
    return gulp.src(jsFiles)
        .pipe(concat('app.js'))
        .pipe(rename('app.min.js'))
        .pipe(uglify())
        .pipe(gulp.dest(fileDest))
        .pipe(livereload());
}

function watch() {
    livereload.listen();
    gulp.watch('sass/**/*.scss', gulp.series('scss'));
    gulp.watch('*.php', gulp.series('php'));
    // gulp.watch('js/app.js', gulp.series('js'));
}

exports.js = js;
exports.scss = scss;
exports.php = php;
exports.watch = watch;
exports.default = gulp.parallel(scss, js, watch);