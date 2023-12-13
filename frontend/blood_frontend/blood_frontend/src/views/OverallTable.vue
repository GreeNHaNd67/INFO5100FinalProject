<template>
<div class="block" style="margin: 20px;text-align:center;">
    <vxe-grid
      border
      :loading="loading"
      resizable
      height="700"
      :align="allAlign"
      :columns="tableColumn"
      :toolbar-config="{slots: {buttons: 'toolbar_buttons'}}"
      :data="tableData"
    >
      <template v-slot:toolbar_buttons >
       <el-date-picker
    v-model="timeValue"
     :picker-options="pickerOptions"
       value-format="yyyy-MM-dd"
      style="text-align:right"
      type="daterange"
      range-separator="to"
      start-placeholder="start time"
      end-placeholder="end time"
      @change="filterByDate"
      >
    </el-date-picker>
    <el-button type="primary" @click="$router.push('/high')">Systolic Pressure</el-button>
      <el-button type="primary" @click="$router.push('/low')">Diastolic Pressure</el-button>
      <el-button type="primary" @click="$router.push('/')">Heart Beats</el-button>
      </template>

    </vxe-grid>
  </div>
</template>

<script>
import { mapState } from 'vuex';


export default {
  name: 'OverallTable',
  data() {
    return {
      allAlign: null,
      timeValue:[],
      loading:false,
      tableColumn: [
        { type: 'seq', width: 50 },
        { field: 'date', title: 'Date' },
        { field: 'time', title: 'time', showHeaderOverflow: true },
        { field: 'systolic_pressure', title: 'Systolic Pressure', showOverflow: true },
        { field: 'diastolic_pressure', title: 'Diastolic Pressure', showOverflow: true },
        { field: 'heart_beats', title: 'Heart Beats', showOverflow: true },
        { field: 'avg_SP', title: 'AVG Systolic Pressure', showOverflow: true },
        { field: 'avg_DP', title: 'AVG Diastolic Pressure', showOverflow: true },
        { field: 'avg_HB', title: 'AVG Heart Beats', showOverflow: true }
      ],
        pickerOptions: {
        onPick: ({ maxDate, minDate }) => {
          if(maxDate && minDate ){
            const oneWeek = 7 * 24 * 3600 * 1000;
          if (maxDate - minDate < oneWeek) {
            this.$message.error('The selected date range must greater than one week.');
            this.timeValue = [];
          }
          }
        },
        disabledDate: (time) => {
          if (this.timeValue && this.timeValue[0] instanceof Date) {
           return time.getTime() < this.timeValue[0].getTime();
    }
  return false;
        }
      }
    }
  },

  computed: {
     ...mapState({
      tableData: state => state.table.tableData
    }),
  },
  watch: {
    timeValue(newVal) {
      if (newVal === null) {
        this.timeValue = [];
      }
    }
  },

  created() {
    this.loadData()
  },

  methods: {

  loadData: async function(date) {
     this.loading=true
    const startDate = Array.isArray(this.timeValue) && this.timeValue.length > 0 
    ? new Date(this.timeValue[0]).toISOString().split('T')[0] 
    : '';

  const endDate = Array.isArray(this.timeValue) && this.timeValue.length > 1 
    ? new Date(this.timeValue[1]).toISOString().split('T')[0] 
    : '';

  this.$store.dispatch('table/getBloodListInfo', { startDate, endDate }).then(
    this.loading=false
  ).catch(error=>console.log(error));
  

  
    },
    filterByDate:function(){
   this.loadData()
 
    }
  }

}
</script>

</style>
