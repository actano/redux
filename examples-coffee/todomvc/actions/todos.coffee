types = require '../constants/ActionTypes'

module.exports.addTodo = (text) ->
  return { type: types.ADD_TODO, text }


module.exports.deleteTodo = (id) ->
  return { type: types.DELETE_TODO, id }


module.exports.editTodo = (id, text) ->
  return { type: types.EDIT_TODO, id, text }


module.exports.completeTodo = (id) ->
  return { type: types.COMPLETE_TODO, id }


module.exports.completeAll = ->
  return { type: types.COMPLETE_ALL }


module.exports.clearCompleted = ->
  return { type: types.CLEAR_COMPLETED }
