{ createStore, applyMiddleware } = require 'redux'
thunk = require 'redux-thunk'
reducer = require '../reducers'

createStoreWithMiddleware = applyMiddleware(thunk)(createStore)

# configureStore
module.exports = (initialState) ->
  store = createStoreWithMiddleware reducer, initialState

  if module.hot
    # Enable Webpack hot module replacement for reducers
    module.hot.accept '../reducers', ->
      nextReducer = require '../reducers'
      store.replaceReducer nextReducer

  return store
