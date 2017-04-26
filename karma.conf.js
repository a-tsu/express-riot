module.exports = function(config) {
  config.set({
    basePath: '',
    frameworks: ['mocha','chai','riot'],
    plugins: [
      'karma-mocha',
      'karma-mocha-reporter',
      'karma-phantomjs-launcher',
      'karma-chai',
      'karma-riot'
    ],
    files: [
      'node_modules/expect.js/index.js', 
      'public/tags/header.tag',
      'test/tags/header.spec.js'
    ],
    preprocessors: {
      'public/tags/header.tag': ['riot']
    },
    browsers: ['PhantomJS'],
    reporters: ['mocha'],
    failOnEmptyTestSuite: false,
    singleRun: true  
  })
}
