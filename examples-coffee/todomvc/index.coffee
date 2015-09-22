React = require 'react'
r = require 'r-dom'
{ Provider } = require 'react-redux'
App = require './containers/App'
configureStore = require './store/configureStore'
require 'todomvc-app-css/index.css'

store = configureStore()

provider = r Provider,
    store: store
    [
        -> r App
    ]

React.render provider, document.getElementById 'root'
