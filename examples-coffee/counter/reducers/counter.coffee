{ INCREMENT_COUNTER, DECREMENT_COUNTER } = require '../actions/counter'

# counter
module.exports = (state = 0, action) ->
  switch action.type
      when INCREMENT_COUNTER then state + 1
      when DECREMENT_COUNTER then state - 1
      else state
