import request from '@/utils/request'

export function getBloodList(startTime, endTime) {
  let url = '/bloodpressure'
  if (startTime && endTime) {
    url+=`/${startTime}/${endTime}`
  }
  return request({
    url:url,
    method: 'get',
  })
}
