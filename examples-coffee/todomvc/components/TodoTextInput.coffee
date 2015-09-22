React = require 'react'
{ Component, PropTypes } = React
r = require 'r-dom'
classnames = require 'classnames'

class TodoTextInput extends Component
  constructor: (props, context) ->
    super props, context
    @state =
      text: @props.text or ''

  handleSubmit: (e) =>
    text = e.target.value.trim()
    if e.which is 13
      @props.onSave text
      if @props.newTodo
        @setState text: ''

  handleChange: (e) =>
    @setState text: e.target.value

  handleBlur: (e) =>
    unless @props.newTodo
      @props.onSave e.target.value

  render: =>
    return r.input
      className: classnames
        edit: @props.editing,
        'new-todo': @props.newTodo
      type: "text"
      placeholder: @props.placeholder
      autoFocus: "true"
      value: @state.text
      onBlur: @handleBlur
      onChange: @handleChange
      onKeyDown: @handleSubmit

TodoTextInput.propTypes =
  onSave: PropTypes.func.isRequired,
  text: PropTypes.string,
  placeholder: PropTypes.string,
  editing: PropTypes.bool,
  newTodo: PropTypes.bool

module.exports = TodoTextInput
