## Exercise 1

Display the current counter amount

## Exercise 2

Add another button, which increment the counter only if the current value is odd

## Exercise 3

Add another button, which increment the counter asynchronously, delayed by at least
100 ms.

__Hint:__

By default you can only dispatch actions which returns an object.
This way asynchronous actions are not supported, only synchronous data flow.

With the thunk middleware you can dispatch functions as well, which gives you
the opportunity to create async actions.

If the middleware detects an action which returns a function it will call it
this way:

```
action(dispatch, getState)
```

Usage of these arguments:

`dispatch(Object action)` function - dispatch an action

`getState()` function - returns the current state
