{ bindActionCreators } = require 'redux'
{ connect } = require 'react-redux'
Counter = require '../components/Counter'
CounterActions = require '../actions/counter'

mapStateToProps = (state) ->
  title: 'Counter App'

mapDispatchToProps = (dispatch) ->
  bindActionCreators CounterActions, dispatch

# connect
module.exports = connect(mapStateToProps, mapDispatchToProps)(Counter);
