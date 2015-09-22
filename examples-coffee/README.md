This directory contains two of the official examples (counter and todomvc)
rewritten from ES6 to CoffeeScript. JSX part is also rewritten
using the [r-dom](https://github.com/uber/r-dom) library.

Furthermore it contains a small React only examples (without Redux).

All examples in the subdirectory contains a README.md with some exercises.

### Setup
Use this shell script to run `npm install` for every example:

```
cd examples-coffee
./install-all.sh
```

### Starting the app
In each example (directory) you can start the app with `npm start`
then open [http://localhost:3000](http://localhost:3000)

##### Boilerplate Code
All examples using webpack and express to bundle the files for the browser.
Most content of these files is just a boilerplate code:

- index.html
- package.json
- server.js
- webpack.config.js


##### Meta Info
- forked since 847f9f0d47
- updated to e45f8516
