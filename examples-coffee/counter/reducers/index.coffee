{ combineReducers } = require 'redux'
counter = require './counter'

rootReducer = combineReducers {counter}

module.exports =  rootReducer
