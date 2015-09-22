React = require 'react'
{ PropTypes, Component } = React
r = require 'r-dom'
classnames = require 'classnames'
{ SHOW_ALL, SHOW_COMPLETED, SHOW_ACTIVE } = require '../constants/TodoFilters'

FILTER_TITLES = {}
FILTER_TITLES[SHOW_ALL] = 'All'
FILTER_TITLES[SHOW_ACTIVE] = 'Active'
FILTER_TITLES[SHOW_COMPLETED] = 'Completed'

class Footer extends Component
  renderTodoCount: ->
    { activeCount } = @props
    itemWord = if activeCount is 1 then 'item' else 'items'

    return r.span
      className: "todo-count", [
        r.strong "#{activeCount or 'No'}"
        " #{itemWord} left"
      ]

  renderFilterLink: (filter) ->
    title = FILTER_TITLES[filter]
    { filter: selectedFilter, onShow } = @props

    return r.a
      className: classnames selected: filter is selectedFilter
      style: { cursor: 'pointer' }
      onClick: -> onShow filter
    , title


  renderClearButton: ->
    { completedCount, onClearCompleted } = @props
    if completedCount > 0
      return r.button
        className: "clear-completed"
        onClick: onClearCompleted
      , 'Clear completed'


  render: =>
    return r.footer
      className: "footer"
    , [
      @renderTodoCount()

      r.ul
        className: "filters"
      , [
        [SHOW_ALL, SHOW_ACTIVE, SHOW_COMPLETED].map (filter) =>
          r.li
            'data-foo': filter
            key: filter
          , @renderFilterLink filter
      ]

      @renderClearButton()
    ]

Footer.propTypes =
  completedCount: PropTypes.number.isRequired,
  activeCount: PropTypes.number.isRequired,
  filter: PropTypes.string.isRequired,
  onClearCompleted: PropTypes.func.isRequired,
  onShow: PropTypes.func.isRequired

module.exports = Footer
