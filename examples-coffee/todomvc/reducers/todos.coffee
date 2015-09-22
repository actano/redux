ActionTypes = require '../constants/ActionTypes'
{ ADD_TODO, DELETE_TODO, EDIT_TODO, COMPLETE_TODO, COMPLETE_ALL, CLEAR_COMPLETED } = ActionTypes

initialState = [
  text: 'Use Redux'
  completed: false
  id: 0
]

# todos
module.exports = (state = initialState, action) ->
  switch action.type

    when ADD_TODO
      return [ {
        id: state.reduce(((maxId, todo) ->
          Math.max todo.id, maxId
        ), -1) + 1
        completed: false
        text: action.text
      } ].concat state

    when DELETE_TODO
      return state.filter (todo) ->
        todo.id isnt action.id

    when EDIT_TODO
      return state.map (todo) ->
        if todo.id is action.id then Object.assign({}, todo, text: action.text) else todo

    when COMPLETE_TODO
      return state.map (todo) ->
        if todo.id is action.id then Object.assign({}, todo, completed: !todo.completed) else todo

    when COMPLETE_ALL
      areAllMarked = state.every (todo) ->
        todo.completed

      return state.map (todo) ->
        Object.assign {}, todo, completed: !areAllMarked

    when CLEAR_COMPLETED
      return state.filter (todo) ->
        todo.completed is false

    else
      return state
