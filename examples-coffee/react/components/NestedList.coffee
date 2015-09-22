React = require 'react'
r = require 'r-dom'
{ Component, PropTypes } = React

class NestedList extends Component
  render: ->

    list = @props.list
    level = @props.level or 0

    return r.ul
      'data-level': level
    , [
      list.map (item) ->
        if Array.isArray item
          return  r.li
            'data-has-children': true
          , [
              r NestedList,
                list: item
                level: level + 1
            ]
        else
          return r.li item
    ]

NestedList.propTypes = {
  list: React.PropTypes.arrayOf(React.PropTypes.oneOfType([
      React.PropTypes.string
      React.PropTypes.number
      React.PropTypes.instanceOf(Array)
    ]))
  level: React.PropTypes.number
}

module.exports = NestedList
