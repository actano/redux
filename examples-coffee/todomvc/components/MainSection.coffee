React = require 'react'
{ Component, PropTypes } = React
r = require 'r-dom'
TodoItem = require './TodoItem'
Footer = require './Footer'
{ SHOW_ALL } = require '../constants/TodoFilters'

class MainSection extends Component
  constructor: (props, context) ->
    super props, context
    @state =
      filter: SHOW_ALL

  handleClearCompleted: =>
    atLeastOneCompleted = @props.todos.some (todo) ->
      todo.completed

    if atLeastOneCompleted
      @props.actions.clearCompleted()

  handleShow: (filter) =>
    console.log 'not implemented yet'

  renderToggleAll: (completedCount) =>
    { todos, actions } = @props
    if todos.length > 0
      return r.input
        className:"toggle-all"
        type: "checkbox"
        checked: completedCount is todos.length
        onChange: actions.completeAll

  renderFooter: (completedCount) =>
    { todos } = @props
    { filter } = @state
    activeCount = todos.length - completedCount

    if todos.length
      return r Footer,
        completedCount: completedCount
        activeCount: activeCount
        filter: filter
        onClearCompleted: @handleClearCompleted
        onShow: @handleShow

  render: =>
    { todos, actions } = @props

    completedCount = todos.reduce (count, todo) ->
      if todo.completed then count + 1 else count
    , 0

    return r.section
      className: "main", [
        @renderToggleAll completedCount
        r.ul
          className: "todo-list", todos.map (todo) ->
            props = Object.assign {},
              key: todo.id
              todo: todo
            , actions
            r TodoItem, props
        @renderFooter(completedCount)
      ]

MainSection.propTypes =
  todos: PropTypes.array.isRequired,
  actions: PropTypes.object.isRequired

module.exports = MainSection
