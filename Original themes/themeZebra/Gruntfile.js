/*jshint node: true */

"use strict";

var loadTasksRelative = require("grunt-niagara/lib/loadTasksRelative");

module.exports = function runGrunt(grunt) {

  var slashes = /[\/\\]/g,
      srcDir = /^src-imageOverrides-/,
      fileExtension = /\.(png|gif|bmp|jpg|jpeg)$/i,
      now = +new Date(),
      moduleName = 'themeZebra',
      spriteUrl = '/module/' + moduleName + '/sprite/sprite.png?ts=' + now;
    
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),
    
    /*
     generate css spritesheet.
    */
    sprite: {
      all: {
        src: [ 'src/**/*.png', '!src/sprite/sprite.png' ],
        dest: 'src/sprite/sprite.png',
        destCss: 'src/sprite/sprite.css',
        cssTemplate: 'cssTemplate.mustache',
        padding: 2,
        cssVarMap: function (sprite) {
          sprite.spriteUrl = spriteUrl;
          sprite.class_name = sprite.source_image
              .replace(slashes, '-')
              .replace(srcDir, '')
              .replace(fileExtension, '');
        },
        engine: 'pixelsmith'
      }
    },

    /*
     minify/optimize images
     */
    imagemin: {
      options: {
        optimizationLevel: 3,
        interlaced: false
      },
      all: {
        files: [{
          expand: true,
          src: [ 'src/**/*.{png,jpg,gif}' ],
          dest: './'
        }]
      },
      sprite: {
        files:{
          'src/sprite/sprite.png': 'src/sprite/sprite.png'
        }
      }
    },

    /*
     use grunt-concat to add @noSnoop to generated css.
     */
    concat: {
      addNoSnoop: {
        options: {
          banner: '/* @noSnoop */\n\n'
        },
        src: [ 'src/sprite/sprite.css' ],
        dest: 'src/sprite/sprite.css'
      }
    },
    
    less: {
      options: {
        banner: '/* @noSnoop */',
        sourceMap: true,
        sourceMapBasepath: 'src/less',
        sourceMapRootpath: '/module/themeZebra/less/'
      },
      themeZebra: {
        options: {
          sourceMapFilename: 'build/src/less/maps/hx.map',
          sourceMapURL: '/module/themeZebra/less/maps/hx.map'
        },
        files: {
          'build/src/hx/theme.css': 'src/less/hx.less'
        }
      },
      ux: {
        options: {
          sourceMapFilename: 'build/src/less/maps/ux.map',
          sourceMapURL: '/module/themeZebra/less/maps/ux.map'
        },
        files: {
          'build/src/ux/theme.css': 'src/less/ux.less'
        }
      }
    },

    watch: {
      sprite: {
        files: ['Gruntfile.js', 'cssTemplate.mustache'],
        tasks: [ 'default' ]
      },
      css: {
        files: ['Gruntfile.js', '**/*.less'],
        tasks: ['less', 'beep']
      }
    }
  });
  
  loadTasksRelative(grunt, 'grunt-beep');
  loadTasksRelative(grunt, 'grunt-contrib-concat');
  loadTasksRelative(grunt, 'grunt-contrib-imagemin');
  loadTasksRelative(grunt, 'grunt-contrib-less');
  loadTasksRelative(grunt, 'grunt-contrib-watch');
  loadTasksRelative(grunt, 'grunt-spritesmith');
  
  grunt.registerTask('buildsprite', [ 'sprite', 'imagemin:sprite', 'concat' ]);
  grunt.registerTask('default', [ 'less' ]);
};
