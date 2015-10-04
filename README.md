[redux-log-slow-reducers][]
===========================

[![license](https://img.shields.io/npm/l/redux-log-slow-reducers.svg?style=flat-square)](https://www.npmjs.com/package/redux-log-slow-reducers)
[![npm version](https://img.shields.io/npm/v/redux-log-slow-reducers.svg?style=flat-square)](https://www.npmjs.com/package/redux-log-slow-reducers)
[![npm downloads](https://img.shields.io/npm/dm/redux-log-slow-reducers.svg?style=flat-square)](https://www.npmjs.com/package/redux-log-slow-reducers)
[![Code Climate](https://codeclimate.com/github/michaelcontento/redux-log-slow-reducers/badges/gpa.svg)](https://codeclimate.com/github/michaelcontento/redux-log-slow-reducers)
[![build](https://travis-ci.org/michaelcontento/redux-log-slow-reducers.svg)](https://travis-ci.org/michaelcontento/redux-log-slow-reducers)

Warn about slow reducers in your [Redux][] app.

## Installation

    npm install --save redux-log-slow-reducers

## Usage

```js
// Import all your reducers as usual
import * as reducers from './reducers';

// And simply wrap it with the function exposed by this module
//
// Note: There is a optional second argument to logSlowReducers which allows you
//       to define how slow a reducer must be to trigger a warning (in ms). The
//       default value for this is currently 8ms, as this is half the time
//       available in one frame to run at 60fps.
import logSlowReducers from 'redux-log-slow-reducers';
const loggingReducers = logSlowReducers(reducers);

// Everything else is plain redux stuff
import { createStore, combineReducers } from 'redux';
const store = createStore(combineReducers(loggingReducers));
```

## Todo

- Write tests for everything!

  [Redux]: https://github.com/gaearon/redux
  [redux-log-slow-reducers]: https://github.com/michaelcontento/redux-log-slow-reducers
  [react-native]: https://facebook.github.io/react-native/
  [NetInfo]: https://facebook.github.io/react-native/docs/netinfo.html#content
