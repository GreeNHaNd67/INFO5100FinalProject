import store from '@/store'
import axios from 'axios'
import router from '@/router'
import { Message } from 'element-ui'


const service = axios.create({
  baseURL: process.env.VUE_APP_BASE_API,
  timeout: 50000
})


service.interceptors.request.use(
  config => {
    // do something before request is sent

    if (store.getters.token) {
      // let each request carry token
      // ['X-Token'] is a custom headers key
      // please modify it according to the actual situation
      config.headers['X-Token'] = getToken()
    }
    return config
  },
  error => {
    // do something with request error
    console.log(error) // for debug
    return Promise.reject(error)
  }
)
// axios响应拦截器
service.interceptors.response.use((response) => {
  const { status, data } = response
  if (status===200) {
    return data
  } else {
    Message.error("请求失败")
    return Promise.reject(new Error("请求失败"))
  }
}, (error) => {
  Message.error(error.message)
  return Promise.reject(error)
})
export default service
