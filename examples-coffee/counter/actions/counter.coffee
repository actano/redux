INCREMENT_COUNTER = 'INCREMENT_COUNTER'
DECREMENT_COUNTER = 'DECREMENT_COUNTER'

increment = ->
  type: INCREMENT_COUNTER

decrement = ->
  type: DECREMENT_COUNTER

incrementIfOdd = ->
  return (dispatch, getState) ->
    { counter } = getState()

    return if counter % 2 is 0

    dispatch increment()

incrementAsync = (delay = 1000) ->
  return (dispatch) ->
    setTimeout ->
      dispatch increment()
    , delay

module.exports.INCREMENT_COUNTER = INCREMENT_COUNTER
module.exports.DECREMENT_COUNTER = DECREMENT_COUNTER
module.exports.increment = increment
module.exports.decrement = decrement
module.exports.incrementIfOdd = incrementIfOdd
module.exports.incrementAsync = incrementAsync
