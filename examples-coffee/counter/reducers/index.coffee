{ combineReducers } = require 'redux'
counter = require './counter'
title = require './title'

rootReducer = combineReducers {counter, title}

module.exports =  rootReducer
