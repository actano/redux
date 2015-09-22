React = require 'react'
{Component} = React
r = require 'r-dom'

List = require './components/NestedList'

app = r List, list: [1,2, ['3a', '3b', ['3bi'], '3c'], 4]

React.render app, document.getElementById 'root'
