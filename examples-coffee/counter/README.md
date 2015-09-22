## Exercise 1

Display the current counter amount

## Exercise 2

Add another button, which increment the counter only if the current value is odd

## Exercise 3

Add another button, which increment the counter asynchronous, delayed by at least
100 ms.

__Hint:__

Simple actions in Redux are just a plain object, but you can also return a
function instead. If the return value of a action is a function it will be called
with two arguments:

```
action(dispatch, getState)
```

Usage of these arguments:

`dispatch(Object action)` function - dispatch an action

`getState()` function - returns the current state
