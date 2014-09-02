describe 'preprocessors cson2html', ->
  chai = require('chai')

  {expect} = chai

  cson2json = require '../lib/cson2json'
  logger = create: -> {debug: ->}
  process = null

  createPreprocessor = () ->
    cson2json logger

  beforeEach ->
    process = createPreprocessor()

  it 'should convert cson to json code', (done) ->
    content = "key: 'v'\nnested:\n  a: 1\n  b: 0.4\n  c: true\narray: [9,8,7,]"
    expected = '{"key":"v","nested":{"a":1,"b":0.4,"c":true},"array":[9,8,7]}'
    file = {originalPath: 'test'}
    process content, file, (processedContent) ->
      expect(processedContent).to.equal(expected)
      done()
