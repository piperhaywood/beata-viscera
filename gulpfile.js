var gulp = require('gulp');
var exec = require('gulp-exec');

gulp.task('compile', function() {
  var options = {
    continueOnError: false,
    pipeStdout: false,
  };
  var reportOptions = {
    err: true,
    stderr: true,
    stdout: true,
  }
  return gulp.src('*.ly')
    .pipe(exec('lilypond <%= file.path %>', options))
    .pipe(exec.reporter(reportOptions));
});

gulp.task('watch', function() {
  gulp.watch('*.ly', ['compile']);
});