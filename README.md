# karma-cson-preprocessor

A Karma plugin. Compile CSON files into JSON.

```bash
npm install karma-cson-preprocessor --save-dev
```

## Configuration
```js
// karma.conf.js
module.exports = function(config) {
  config.set({
    preprocessors: {
      '**/*.cson': ['cson', 'html2js']
    },

    files: [
      '**/*.js',
      '**/*.json,
    ]
  });
};
```

## Origin

I used
[karma-slim-preprocessor](https://github.com/Scrimmage/karma-slim-preprocessor)
as a model for this code.
