{ bindActionCreators } = require 'redux'
{ connect } = require 'react-redux'
Counter = require '../components/Counter'
CounterActions = require '../actions/counter'

mapStateToProps = (state) ->
  title: state.title

# wrap all the actions with an automatically dispatch call
# this helps you to avoid pssing redux specific handlers for the components
# so that the keep dump
mapDispatchToProps = (dispatch) ->
  bindActionCreators CounterActions, dispatch

# connect
# connects a React component to a Redux store
module.exports = connect(mapStateToProps, mapDispatchToProps)(Counter)
