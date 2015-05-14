axis         = require 'axis'
rupture      = require 'rupture'
autoprefixer = require 'autoprefixer-stylus'
js_pipeline  = require 'js-pipeline'
css_pipeline = require 'css-pipeline'
dynamic      = require 'dynamic-content'

module.exports =
  ignores: ['README.md', 'LICENSE', '**/_*', '.gitignore']

  extensions: [
    js_pipeline(files: 'assets/js/*.js'),
    css_pipeline(files: 'assets/css/*.styl'),
    dynamic(write: 'content.json')
  ]

  stylus:
    use: [axis(), rupture(), autoprefixer()]
    sourcemap: true

  jade:
    pretty: true

  locals:
    author: 'Jeffrey Crocker'
    pages: [
      {
        title: 'ABOUT'
        url: '/about.html'
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
