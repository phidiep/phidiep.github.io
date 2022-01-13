module.exports = {
  publicPath: process.env.NODE_ENV === 'production'
  ? '/menu-recommendation/'
  : '/'
}
module.exports = {
  transpileDependencies: [
    'vuetify'
  ]
}