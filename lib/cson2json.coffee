util = require('util')
CSON = require('cson-safe')

createCsonPreprocessor = (logger) ->
  log = logger.create('preprocessor.cson')
  (content, file, done) ->
    log.debug('Processing \"%s\".', file.originalPath)
    done(JSON.stringify(CSON.parse(content)))

createCsonPreprocessor.$inject = ['logger']
module.exports = createCsonPreprocessor
