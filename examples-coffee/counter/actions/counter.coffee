INCREMENT_COUNTER = 'INCREMENT_COUNTER'
DECREMENT_COUNTER = 'DECREMENT_COUNTER'

increment = ->
  type: INCREMENT_COUNTER

decrement = ->
  type: DECREMENT_COUNTER

module.exports.INCREMENT_COUNTER = INCREMENT_COUNTER
module.exports.DECREMENT_COUNTER = DECREMENT_COUNTER
module.exports.increment = increment
module.exports.decrement = decrement
