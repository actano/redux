{ createStore } = require 'redux'
rootReducer = require '../reducers'

# configureStore
module.exports = (initialState) ->
  store = createStore rootReducer, initialState

  if module.hot
    # Enable Webpack hot module replacement for reducers
    module.hot.accept '../reducers', ->
      nextReducer = require '../reducers'
      store.replaceReducer nextReducer

  return store
