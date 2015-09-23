React = require 'react'
{Component} = React
r = require 'r-dom'

NestedList = require './components/NestedList'

class App extends Component
    constructor: ->
        # initial state
        @state =
            list: [1, 2, ['3a', '3b', ['3bi'], '3c'], 4]

    render: ->
        list = @state.list
        r.div {}, [
            r NestedList, list: list
        ]

React.render r(App), document.getElementById 'root'
