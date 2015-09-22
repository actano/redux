React = require 'react'
{Component} = React
r = require 'r-dom'

NestedList = require './components/NestedList'

app = r NestedList, list: [1,2, ['3a', '3b', ['3bi'], '3c'], 4]

React.render app, document.getElementById 'root'
