module.exports = (config) ->
  config.set
    basePath: ''
    frameworks: ['jasmine']
    browsers: ['Chrome']
    client:
      captureConsole: true
    reporters: ['spec']
    preprocessors: '**/*.coffee': ['coffee']
    reportSlowerThan: 100
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
      # plugin
      'src/jquery-nav-menu.coffee'
      # fixtures
      'spec/fixtures.html'
      # spec
      'spec/spec.coffee'
    ]