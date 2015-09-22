React = require 'react'
{ PropTypes, Component } = React
r = require 'r-dom'
TodoTextInput = require './TodoTextInput'

class Header extends Component
  handleSave: (text) =>
    if text.length isnt 0
      @props.addTodo text
    return null

  render: =>
    return r.header
      className: "header"
    , [
      r.h1 'todos'

      r TodoTextInput,
        newTodo: true
        onSave: @handleSave
        placeholder: "What needs to be done?"
    ]


Header.propTypes =
  addTodo: PropTypes.func.isRequired

module.exports = Header
