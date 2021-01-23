const asser = require('assert');
const { getNativeFunction } = require('sbffi');
const helloWorld = getNativeFunction(
    'LibLSFW/target/debug/libLSFW.so',
    'hello_world',
    'void',
    []
);

helloWorld();