## Exercise 1

Checkout the existing example and the r-dom API: https://github.com/uber/r-dom

## Exercise 2

- create a new React component `Header` which will have two properties:
    - title which will be displayed in `h1`
    - length of the list which will be displayed after the headline
- add the new component above the nested list in the root component (`App`)

## Exercise 3

- create a button in the Header component.
- the Header component gets a `onClick` property which is a click handler for the button
- the event handler append an item with a random value to the list

__Hint:__

The state can be changed with `this.setState()`
see https://facebook.github.io/react/docs/component-api.html#setstate

## Exercise 4

Ensure all the `props` are passed with the proper type to the component via Prop Validation: https://facebook.github.io/react/docs/reusable-components.html#prop-validation

You need the ES6 syntax, see `NestedList.propTypes`
