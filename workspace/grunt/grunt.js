module.exports = function (grunt) {
  'use strict';

  // Load local NPM tasks
  grunt.loadNpmTasks('grunt-recess');
  grunt.loadNpmTasks('grunt-growl');

  grunt.initConfig({

    lint : {
      all: [
        '../js/simko.js'
      ]
    },

    minify : {
      all: [
        '../less/simko.less'
      ]
    },

    recess: {
      main: {
        src: [
        '../less/simko.less'
        ],
        dest: '../css/simko.1.0.0.css',
        options: {
            compile: true,
            compress: true
        }
      }
    },

    watch : {
      scripts: {
        files: [
          '../less/*.less',
          '../js/*.js'
        ],
        tasks: 'lint:all min:dist recess:main'
      }
    },

    min: {
      dist: {
        src : [
          '../bootstrap/docs/assets/js/jquery.js',
          '../bootstrap/docs/assets/js/bootstrap.min.js',
          '../js/responsimage.js',
          '../js/crossref.js',
          '<config:lint.all>'
        ],
        dest: '../js/simko.1.0.0.js',
        separator: ';'
      }
    },

    growl : {
      compile : {
        title : "Grunt.js",
        message : "Grunt was run successfully"
      }
    }

});

// Main task
grunt.registerTask('default', 'lint:all min:dist recess:main growl:compile')};