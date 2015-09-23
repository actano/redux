## Exercise 1

check out the existing example and the r-dom API: https://github.com/uber/r-dom

## Exercise 2

- create a new React component __Header__ which will have __two props__:
    - a __title__ which will be displayed in __h1__
    - __length__ of the list which will be displayed after the headline
- add the new component above the nested list in the root component (`App`)

## Exercise 3

- add a button in the Header component.
- the Header component gets a __onClick__ prop which is a click handler for the button
- the click handler append an item with a random value to the list

__Hint:__

The state can be changed with `this.setState()` within a component,
see https://facebook.github.io/react/docs/component-api.html#setstate

## Exercise 4

Ensure all the `props` are passed with the proper type to the component via Prop Validation: https://facebook.github.io/react/docs/reusable-components.html#prop-validation

You need the (ES6) class syntax, see NestedList component.
