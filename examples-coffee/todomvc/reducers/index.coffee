{ combineReducers } = require 'redux'
todos = require './todos'

rootReducer = combineReducers {todos}

module.exports = rootReducer
