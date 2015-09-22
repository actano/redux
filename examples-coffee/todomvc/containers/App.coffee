React = require 'react'
r = require 'r-dom'
{ Component, PropTypes } = React
{ bindActionCreators } = require 'redux'
{ connect } = require 'react-redux'
Header = require '../components/Header'
MainSection = require '../components/MainSection'
TodoActions = require '../actions/todos'

class App extends Component
  render: ->
    { todos, dispatch } = this.props
    actions = bindActionCreators TodoActions, dispatch

    return r.div {}, [
      r Header,
        addTodo: actions.addTodo
    ,
      r MainSection,
        todos: todos
        actions: actions
    ]

App.propTypes =
  todos: PropTypes.array.isRequired,
  dispatch: PropTypes.func.isRequired

mapStateToProps = (state) ->
  todos: state.todos

module.exports =  connect(mapStateToProps)(App)
