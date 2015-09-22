React = require 'react'
r = require 'r-dom'
{ Component, PropTypes } = React

class Counter extends Component
  render: ->
    { title, increment, decrement } = @props
    return r.p {}, [
        r.h1 title
        r.button
          onClick: increment
        , '+'
        ' '
        r.button
          onClick: decrement
        , '-'
      ]

Counter.propTypes = {
  title: PropTypes.string.isRequired
  increment: PropTypes.func.isRequired
  decrement: PropTypes.func.isRequired
}

module.exports = Counter
