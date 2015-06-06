axis         = require 'axis'
rupture      = require 'rupture'
autoprefixer = require 'autoprefixer-stylus'
js_pipeline  = require 'js-pipeline'
css_pipeline = require 'css-pipeline'
dynamic      = require 'dynamic-content'

module.exports =
  ignores: ['README.md', 'LICENSE', '**/_*', '.gitignore']

  extensions: [
    js_pipeline(files: 'assets/js/*.js', out: 'js/main.js'),
    css_pipeline(files: 'assets/css/**', out: 'css/build.css'),
    dynamic(write: 'content.json')
  ]

  stylus:
    use: [axis(), rupture(), autoprefixer()]
    sourcemap: false

  jade:
    pretty: true

  locals:
    author: 'Jeffrey Crocker'
    pages: [
      {
        title: 'HOME'
        url: '/index.html'
      },
      {
        title: 'BLOG'
        url: '/blog.html'
      },
      {
        title: 'CONTACT'
        url: '/contact.html'
      },
      {
        title: 'FUN'
        url: '/fun.html'
      }
    ]
