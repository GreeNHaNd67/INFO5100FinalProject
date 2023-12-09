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
    return {
      en: en,
      myChart: null,
      timeContainer: ['2022-01-01', '2022-01-07'],
      // this is fake data
      xAxisData: ['2022-01-01', '2022-01-02', '2022-01-03', '2022-01-04', '2022-01-05', '2022-01-06', '2022-01-07'],
      // this is fake data
      yAxisData: [150, 230, 224, 218, 135, 147, 260],
    }
  },
  created() {
    this.getInitData()
  },
  mounted () {
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
    changeTime () {
      let start = new Date(this.timeContainer[0])
      let end = new Date(this.timeContainer[1])
      let days = (end - start) / 1000 / 86400
      if (days !== 7) {
        this.$message.error('Filter for one week')
        return
      }
      this.getInitData()
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
    async getInitData () {
      // let startTime = this.timeContainer[0]
      // let endTime = this.timeContainer[1]
      // const { data: res } = await this.$http.get('http://localhost:8080/bloodpressure/' + startTime + '/' + endTime)
      // data update
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
