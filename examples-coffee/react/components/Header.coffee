React = require 'react'
r = require 'r-dom'
{ Component, PropTypes } = React

class Header extends Component
  render: =>
    {size, title} = @props
    r.div {}, [
        r.h1 title
        r.span "#{size} elements"
        r.button onClick: @props.clickHandler, 'add item'
    ]

module.exports = Header
