# Karma configuration
# Generated on Mon Dec 07 2015 16:08:06 GMT-0700 (MST)

module.exports = (config) ->
  config.set
    basePath: ''
    frameworks: ['jasmine']
    browsers: ['Chrome']
    client:
      captureConsole: true
    reporters: ['spec']
    preprocessors: '**/*.coffee': ['coffee']
    reportSlowerThan: 10
    port: 9876
    colors: true
    logLevel: config.LOG_WARN
    autoWatch: true
    singleRun: false
    concurrency: Infinity
    files: [
      # libraries
      'bower_components/jquery/dist/jquery.js'
      'bower_components/jasmine-jquery/lib/jasmine-jquery.js'
      # fixtures
      'spec/fixtures.html'
      # plugin
      'src/jquery-nav-menu.coffee'
      # spec
      'spec/spec.coffee'
    ]
