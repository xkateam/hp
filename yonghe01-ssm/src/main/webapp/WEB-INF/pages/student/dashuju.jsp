<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="UTF-8">
  <title></title>
	 <script src="${pageContext.request.contextPath }/resources/echarts/echarts.js"></script>


</head>

<body>
   <div id="main1" style="width:450px;height:400px;float:left;"></div>
      <div id="main2" style="width:450px;height:430px;float:right;padding-right:300px;"></div>
         <div id="main3" style="width:750px;height:400px;float:left;padding-right:100px;"></div>
   
         <div id="main4" style="width:500px;height:400px;float:right;padding-top:50px;padding-right:20px;"></div>
</body>
<script>

option = {
	    title: {
	        text: '科目订单时间对比'
	    },
	    tooltip : {
	        trigger: 'axis',
	        axisPointer: {
	            type: 'cross',
	            label: {
	               
	            }
	        }
	    },
	    legend: {
	        data:['语文','数学','英语','化学','物理','生物']
	    },
	    toolbox: {
	        feature: {
	            saveAsImage: {}
	        }
	    },
	    grid: {
	        left: '3%',
	        right: '4%',
	        bottom: '3%',
	        containLabel: true
	    },
	    xAxis : [
	        {
	            type : 'category',
	            boundaryGap : false,
	            data : ['一月','二月','三月','四月','五月','十月','十一月']
	        }
	    ],
	    yAxis : [
	        {
	            type : 'value'
	        }
	    ],
	    series : [
	        {
	            name:'语文',
	            type:'line',
	            stack: '总量',
	            areaStyle: {},
	            data:[120, 132, 101, 134, 90, 230, 210]
	        },
	        {
	            name:'数学',
	            type:'line',
	            stack: '总量',
	            areaStyle: {},
	            data:[220, 182, 191, 234, 290, 330, 310]
	        },
	        {
	            name:'数学',
	            type:'line',
	            stack: '总量',
	            areaStyle: {},
	            data:[150, 232, 201, 154, 190, 330, 410]
	        },
	        {
	            name:'英语',
	            type:'line',
	            stack: '总量',
	            areaStyle: {normal: {}},
	            data:[320, 332, 301, 334, 390, 330, 320]
	        },
	        {
	            name:'生物',
	            type:'line',
	            stack: '总量',
	            label: {
	                normal: {
	                    show: true,
	                    position: 'top'
	                }
	            },
	            areaStyle: {normal: {}},
	            data:[820, 932, 901, 934, 1290, 1330, 1320]
	        }
	    ]
	};
var myChart = echarts.init(document.getElementById('main1'));
myChart.setOption(option);
</script>

<script >
option = {
	    title: {
	        text: '科目订单年份对比',
	        subtext: '数据来自网络'
	    },
	    tooltip: {
	        trigger: 'axis',
	        axisPointer: {
	            type: 'shadow'
	        }
	    },
	    legend: {
	        data: ['2018年', '2019年']
	    },
	    grid: {
	        left: '3%',
	        right: '4%',
	        bottom: '3%',
	        containLabel: true
	    },
	    xAxis: {
	        type: 'value',
	        boundaryGap: [0, 0.01]
	    },
	    yAxis: {
	        type: 'category',
	        data: ['语文','数学','英语','化学','生物','物理']
	    },
	    series: [
	        {
	            name: '2018年',
	            type: 'bar',
	            data: [1820, 4349, 2907, 1040, 1301, 6300]
	        },
	        {
	            name: '2019年',
	            type: 'bar',
	            data: [1932, 5343, 4100, 1219, 1344, 6818]
	        }
	    ]
	};
var myChart = echarts.init(document.getElementById('main2'));
myChart.setOption(option);
</script>

<script>
option = {
	    title : {
	        text: '初中课程老师单月订单对比',
	    
	    },
	    tooltip : {
	        trigger: 'axis'
	    },
	    legend: {
	        data:['浏览量','购买量']
	    },
	    toolbox: {
	        show : true,
	        feature : {
	            dataView : {show: true, readOnly: false},
	            magicType : {show: true, type: ['line', 'bar']},
	            restore : {show: true},
	            saveAsImage : {show: true}
	        }
	    },
	    calculable : true,
	    xAxis : [
	        {
	            type : 'category',
	            data : ['小明','鱼鱼','张宏','张弥高','张丽娟','明明','陈浩','陈红','亮亮','哇哇','妹妹','美美']
	        }
	    ],
	    yAxis : [
	        {
	            type : 'value'
	        }
	    ],
	    series : [
	        {
	            name:'浏览量',
	            type:'bar',
	            data:[2.0, 4, 7.0, 23, 25, 76, 135, 162,32,20.0, 6, 3],
	            markPoint : {
	                data : [
	                    {type : 'max', name: '最大值'},
	                    {type : 'min', name: '最小值'}
	                ]
	            },
	            markLine : {
	                data : [
	                    {type : 'average', name: '平均值'}
	                ]
	            }
	        },
	        {
	            name:'购买量',
	            type:'bar',
	            data:[2.6, 5.9, 9.0, 26.4, 28.7, 70.7, 175.6, 182.2, 48.7, 18.8, 6.0, 2.3],
	            markPoint : {
	                data : [
	                    {name : '年最高', value : 182.2, xAxis: 7, yAxis: 183},
	                    {name : '年最低', value : 2.3, xAxis: 11, yAxis: 3}
	                ]
	            },
	            markLine : {
	                data : [
	                    {type : 'average', name : '平均值'}
	                ]
	            }
	        }
	    ]
	};
	
var myChart = echarts.init(document.getElementById('main3'));
myChart.setOption(option);
</script>
<script>
option = {
	    tooltip: {
	        trigger: 'item'
	     
	    },  title : {
	        text: '科目占比',
	    
	    },
	    legend: {
	        orient: 'vertical',
	        x: 'left',
	        data:['初中语文','初中数学','初中英语','初中化学','初中物理','高中生物','高中语文','高中数学','高中英语','高中化学','高中物理','高中生物']
	    },
	    series: [
	        {
	            name:'访问来源',
	            type:'pie',
	            selectedMode: 'single',
	            radius: [0, '30%'],

	            label: {
	                normal: {
	                    position: 'inner'
	                }
	            },
	            labelLine: {
	                normal: {
	                    show: false
	                }
	            },
	            data:[
	                {value:335, name:'初中语文', selected:true},
	                {value:679, name:'初中数学'},
	                {value:1548, name:'初中英语'}
	            ]
	        },
	        {
	            name:'访问来源',
	            type:'pie',
	            radius: ['40%', '55%'],
	            label: {
	                normal: {
	               
	                    backgroundColor: '#eee',
	                    borderColor: '#aaa',
	                    borderWidth: 1,
	                    borderRadius: 4,
	                    // shadowBlur:3,
	                    // shadowOffsetX: 2,
	                    // shadowOffsetY: 2,
	                    // shadowColor: '#999',
	                    // padding: [0, 7],
	                    rich: {
	                        a: {
	                            color: '#999',
	                            lineHeight: 22,
	                            align: 'center'
	                        },
	                        // abg: {
	                        //     backgroundColor: '#333',
	                        //     width: '100%',
	                        //     align: 'right',
	                        //     height: 22,
	                        //     borderRadius: [4, 4, 0, 0]
	                        // },
	                        hr: {
	                            borderColor: '#aaa',
	                            width: '100%',
	                            borderWidth: 0.5,
	                            height: 0
	                        },
	                        b: {
	                            fontSize: 16,
	                            lineHeight: 33
	                        },
	                        per: {
	                            color: '#eee',
	                            backgroundColor: '#334455',
	                            padding: [2, 4],
	                            borderRadius: 2
	                        }
	                    }
	                }
	            },
	            data:[

	                {value:335, name:'初中语文'},
	                {value:310, name:'初中数学'},
	                {value:234, name:'初中英语'},
	                {value:135, name:'初中化学'},
	                {value:1048, name:'初中物理'},
	                {value:251, name:'高中生物'},
	                {value:147, name:'高中语文'},
	                {value:102, name:'高中数学'}
	            ]
	        }
	    ]
	};
var myChart = echarts.init(document.getElementById('main4'));
myChart.setOption(option);
</script>
</html>