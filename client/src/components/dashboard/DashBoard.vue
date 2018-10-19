<template>
  <div id="pageDashboard">
    <v-container grid-list-xl fluid>
      <v-layout row wrap>
        <!-- mini statistic start -->
        <v-flex lg3 sm6 xs12>
          <mini-statistic
            icon="fa fa-users"
            title="500+"
            sub-title="Users"
            color="indigo"
          >
          </mini-statistic>
        </v-flex>
        <v-flex lg3 sm6 xs12>
          <mini-statistic
            icon="fa fa-money"
            title="150+"
            sub-title="Pending Payments"
            color="red"
          >
          </mini-statistic>
        </v-flex>
        <v-flex lg3 sm6 xs12>
          <mini-statistic
            icon="fa fa-check"
            title="200+"
            sub-title="Verified Payments"
            color="green"
          >
          </mini-statistic>
        </v-flex>
        <v-flex lg3 sm6 xs12>
          <mini-statistic
            icon="fa fa-home"
            title="50+"
            sub-title="Mortgage Plans"
            color="light-blue"
          >
          </mini-statistic>
        </v-flex>
        <!-- mini statistic  end -->
        <v-flex lg6 sm12 xs12>
          <v-userprofiles/>
        </v-flex>
        <v-flex lg6 sm12 xs12>
          <v-user-processing/>
        </v-flex>
      </v-layout>
    </v-container>
  </div>
</template>

<script>

  import EChart from 'vue-echarts/components/ECharts';
  import MiniStatistic from '@/components/widgets/statistic/MiniStatistic';
  import VWidget from '@/components/VWidget';
  import 'echarts/lib/chart/line'
  import 'echarts/lib/component/polar'
  export default {
    components: {
      VWidget,
      MiniStatistic,
      EChart,

    },
    data(){
      let data = []

      for (let i = 0; i <= 360; i++) {
        let t = i / 180 * Math.PI
        let r = Math.sin(2 * t) * Math.cos(2 * t)
        data.push([r, i])
      }
      return{
        polar: {
          title: {
            text: '极坐标双数值轴'
          },
          legend: {
            data: ['line']
          },
          polar: {
            center: ['50%', '54%']
          },
          tooltip: {
            trigger: 'axis',
            axisPointer: {
              type: 'cross'
            }
          },
          angleAxis: {
            type: 'value',
            startAngle: 0
          },
          radiusAxis: {
            min: 0
          },
          series: [
            {
              coordinateSystem: 'polar',
              name: 'line',
              type: 'line',
              showSymbol: false,
              data: data
            }
          ],
          animationDuration: 2000
        }
      }
    },
    computed: {

    }

  };
</script>
