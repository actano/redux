var path = require('path');
var webpack = require('webpack');

module.exports = {
  devtool: 'cheap-module-eval-source-map',
  entry: [
    'webpack-dev-server/client?http://localhost:3000',
    'webpack/hot/only-dev-server',
    './index'
  ],
  output: {
    path: path.join(__dirname, 'dist'),
    filename: 'bundle.js',
    publicPath: '/static/'
  },
  plugins: [
    new webpack.HotModuleReplacementPlugin()
  ],
  module: {
    loaders: [{
      test: /\.css?$/,
      loaders: ['style', 'raw'],
      include: __dirname
    }, {
      test: /\.coffee$/,
      loader: 'coffee-loader'
    }]
  },
  resolve: {
    extensions: ['', '.webpack.js', '.web.js', '.coffee', '.js']
  }
};
