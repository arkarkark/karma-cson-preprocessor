util = require('util')
CSON = require('cson-parser')

createCsonPreprocessor = (logger) ->
  log = logger.create('preprocessor.cson')
  (content, file, done) ->
    log.debug('Processing \"%s\".', file.originalPath)
    try
      done(JSON.stringify(CSON.parse(content)))
    catch error
      throw Error("in #{file.originalPath}\n#{error.toString()}")

createCsonPreprocessor.$inject = ['logger']
module.exports = createCsonPreprocessor
