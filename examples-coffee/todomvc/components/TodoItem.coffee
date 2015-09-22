React = require 'react'
{ Component, PropTypes } = React
r = require 'r-dom'
classnames = require 'classnames'
TodoTextInput = require './TodoTextInput'

class TodoItem extends Component
  constructor: (props, context) ->
    super props, context
    @state =
      editing: false

  handleDoubleClick: =>
    @setState editing: true

  handleSave: (id, text) =>
    if text.length is 0
      @props.deleteTodo id
    else
      @props.editTodo id, text

    @setState editing: false

  render: =>
    {todo, completeTodo, deleteTodo} = @props

    element = null
    if @state.editing
      element = r TodoTextInput,
        text: todo.text
        editing: @state.editing
        onSave: (text) => @handleSave todo.id, text
    else
      element = r.div
        className: "view", [
          r.input
            className: "toggle"
            type: "checkbox"
            checked: todo.completed
            onChange: -> completeTodo todo.id

          r.label
            onDoubleClick: @handleDoubleClick
          , todo.text

          r.button
            className: "destroy"
            onClick: -> deleteTodo todo.id
        ]

    return r.li
      className: classnames
        completed: todo.completed
        editing: @state.editing
    , element


TodoItem.propTypes =
  todo: PropTypes.object.isRequired,
  editTodo: PropTypes.func.isRequired,
  deleteTodo: PropTypes.func.isRequired,
  completeTodo: PropTypes.func.isRequired

module.exports = TodoItem
