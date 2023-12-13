const { defineConfig } = require('@vue/cli-service')

const port = process.env.port || process.env.npm_config_port || 8080

module.exports = defineConfig({
  transpileDependencies: true,
    devServer: {
    port: port,
    open: true,
    proxy: {
      '/api': {
        target: 'http://10.0.0.90:8081',
        changeOrigin: true,
        pathRewrite: {
          '^/api': ''
        }
      }
    },
  },
})
