React = require 'react'
r = require 'r-dom'
{ Component, PropTypes } = React

class Counter extends Component
  render: ->
    { increment, incrementIfOdd, incrementAsync, decrement, counter } = @props
    return r.p {}, [
        r.span "Clicked #{counter} times"
        ' '
        r.button
          onClick: increment
        , '+'
        ' '
        r.button
          onClick: decrement
        , '-'
        ' '
        r.button
          onClick: incrementIfOdd
        , 'Increment if odd'
        ' '
        r.button
          onClick: -> incrementAsync()
        , 'Increment async'
      ]

Counter.propTypes = {
  increment: PropTypes.func.isRequired,
  incrementIfOdd: PropTypes.func.isRequired,
  incrementAsync: PropTypes.func.isRequired,
  decrement: PropTypes.func.isRequired,
  counter: PropTypes.number.isRequired
}

module.exports = Counter
