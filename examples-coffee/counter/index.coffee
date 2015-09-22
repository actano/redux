React = require 'react'
r = require 'r-dom'
{ Provider } = require 'react-redux'
App = require './containers/App'
configureStore = require './store/configureStore'

# actually title is not really something you want to put into the state
# because it doesn't change, it's about to show you how to handle initial state
# and multiple reducers
initialState =
    title: 'Counter App'

# middleware and reducer are connected here as well
store = configureStore initialState

# provide store for the app, in the connect() call
provider = r Provider,
    store: store
    [
        -> r App
    ]

# mount root component at #root element
React.render provider, document.getElementById 'root'
