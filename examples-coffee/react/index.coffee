React = require 'react'
{Component} = React
r = require 'r-dom'
_ = require 'lodash'

NestedList = require './components/NestedList'
Header = require './components/Header'

class App extends Component
    constructor: ->
        # initial state
        @state =
            list: [1, 2, ['3a', '3b', ['3bi'], '3c'], 4]

    clickHandler: =>
        @setState
            list: @state.list.concat [Math.random() * 10]

    render: =>
        list = @state.list
        r.div {}, [
            r Header,
                title: 'quxbax'
                size: _.flatten(list).length
                clickHandler: @clickHandler
            r NestedList, list: list
        ]

React.render r(App), document.getElementById 'root'
