<template>
  <div>
    <div class="block" style="margin-top: 20px;text-align: right;margin-right: 50px">
      <span class="demonstration">Filter for one week&nbsp;&nbsp;</span>
      <el-config-provider  :locale="en">
        <el-date-picker
            v-model="timeContainer"
            type="daterange"
            locale="en"
            value-format="yyyy-MM-dd"
            @change="changeTime"
            range-separator="to"
            start-placeholder="start time"
            end-placeholder="end time">
        </el-date-picker>
      </el-config-provider>
    </div>
    <div ref="main" style="width: 70vw;height: 70vh;margin: 50px auto 0 auto">
    </div>
    <div style="display: flex;justify-content: center;gap: 40px;margin-top: 50px">
      <el-button type="primary" @click="$router.push('/high')">Systolic Pressure</el-button>
      <el-button type="primary" @click="$router.push('/low')">Diastolic Pressure</el-button>
      <el-button type="primary" @click="$router.push('/')">Heart Rate</el-button>
    </div>
  </div>
</template>

<script>
// import { ELConfigProvider } from 'element-ui'
import en from 'element-ui/src/locale/lang/en.js';
export default {
  name: 'HighPressure',
  data() {
    // 这个里面是数据
    return {
      en: en,
      myChart: null,
      // 第一个值为起始日期, 第二个值为结束日期, 给后端的日期为此种格式
      timeContainer: ['2022-01-01', '2022-01-07'],
      // x轴的数据数据(后端需要返回, 只是这里使用了假数据), 后端返回的数据要类似于这种日期数据
      xAxisData: ['2022-01-01', '2022-01-02', '2022-01-03', '2022-01-04', '2022-01-05', '2022-01-06', '2022-01-07'],
      // y轴的数据(后端需要返回, 只是这里使用了假数据), 后端返回的数据要类似于这种
      yAxisData: [150, 230, 224, 218, 135, 147, 260],
    }
  },
  // 当页面初始化时会执行这个函数, 所以我们此时需要向后端请求数据
  created() {
    // 我们直接调用获取数据的函数
    this.getInitData()
  },
  mounted () {
    // 开始渲染图表, 不需要管
    let chartDom = this.$refs.main
    this.myChart = this.$echarts.init(chartDom)
    let option
    option = {
      title: {
        text: 'Systolic Pressure'
      },
      tooltip: {
        trigger: 'axis'
      },
      grid: {
        left: '3%',
        right: '4%',
        bottom: '3%',
        containLabel: true
      },
      toolbox: {
        feature: {
          saveAsImage: {}
        }
      },
      xAxis: {
        name: 'date',
        type: 'category',
        boundaryGap: false,
        data: this.xAxisData
      },
      yAxis: {
        type: 'value',
        name: 'unit(mmHg)'
      },
      series: [
        {
          name: 'Systolic Pressure',
          type: 'line',
          data: this.yAxisData
        }
      ]
    }
    option && this.myChart.setOption(option);
  },
  methods: {
    // 用户选完时间后执行此函数
    changeTime () {
      // 判断用户选取的两个时间间隔是否为一周
      let start = new Date(this.timeContainer[0])
      let end = new Date(this.timeContainer[1])
      let days = (end - start) / 1000 / 86400
      // 如果时间间隔不为7天, 则提示用户不合法
      if (days !== 7) {
        this.$message.error('Filter for one week')
        return
      }
      // 此时我们再去后端得到新的数据, 此时timeContainer中的数据已经发生了变化
      this.getInitData()
      // 重新渲染图表不需要管
      this.myChart.clear()
      this.myChart.setOption(
          {
            title: {
              text: 'Systolic Pressure'
            },
            tooltip: {
              trigger: 'axis'
            },
            grid: {
              left: '3%',
              right: '4%',
              bottom: '3%',
              containLabel: true
            },
            toolbox: {
              feature: {
                saveAsImage: {}
              }
            },
            xAxis: {
              name: 'date',
              type: 'category',
              boundaryGap: false,
              data: this.xAxisData
            },
            yAxis: {
              type: 'value',
              name: 'unit(mmHg)'
            },
            series: [
              {
                name: 'Systolic Pressure',
                type: 'line',
                data: this.yAxisData
              }
            ]
          }
      )
    },
    // 向后端拿数据的函数
    async getInitData () {
      // let startTime = this.timeContainer[0]
      // let endTime = this.timeContainer[1]
      // const { data: res } = await this.$http.get('http://localhost:8080/bloodpressure/' + startTime + '/' + endTime)
      // res即为你们后端返回的数据, 你此时需要把xAxisData, yAxisData的数据进行更新
      // this.xAxisData = []
      // this.yAxisData = []
      // for (let i of res) {
      //   this.yAxisData.push(i.systolicPressure)
      //   this.xAxisData.push(i.date)
      // }
    }
  }
}
</script>

<style scoped>

</style>
