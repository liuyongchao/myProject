function createxAxis(key,minDate,maxDate,xSize,sdf) {
	if(key==1){
		xAxis =  {
	            	type:'datetime',
	            	min:minDate,
	            	max:maxDate,
	            	tickInterval:xSize,//多少时间画一个刻度
					tickPixelInterval :80,  
	                labels: {
		                x:26,
		                //y:7,
		                //rotation:-90,	//这个属性参数控制字体倾斜度
		                align: 'right',
		                style: { font: 'normal 10px Verdana, sans-serif'},//这个属性参数控制字体样式
		                formatter: function() {
		                    return  Highcharts.dateFormat(sdf,this.value);
		                }
	                }
	         }
	}else{
	    xAxis = {
	        categories: [],
	        labels: {
	            align: 'center',
	            fontweight: '20',
	            style: {
	                font: 'normal 5px Verdana, sans-serif',
	                color: ''
	            }
	        },
	        
	        tickInterval:1,
	        startOnTick: false
	    }
    }
}

function createxAxis2(key,xSize,sdf) {
	if(key==1){
		xAxis =  {
	            	type:'datetime',
	            	tickInterval:xSize,//多少时间画一个刻度
					tickPixelInterval :80,  
	                labels: {
		                x:26,
		                //y:7,
		                //rotation:-90,	//这个属性参数控制字体倾斜度
		                align: 'right',
		                style: { font: 'normal 10px Verdana, sans-serif'},//这个属性参数控制字体样式
		                formatter: function() {
		                    return  Highcharts.dateFormat(sdf,this.value);
		                }
	                }
	         }
	}else{
	    xAxis = {
	        categories: [],
	        labels: {
	            align: 'center',
	            fontweight: '100',
	            style: {
	                font: 'normal 10px Verdana, sans-serif',
	                color: ''
	            }
	        },
	        tickInterval:1,
	        startOnTick: false
	    }
    }
}

function createTooltip(key,sdf) {
	if(key==1){
		tooltip = {
                formatter: function() {
                        return '<b>'+ this.series.name +'</b><br/>'+
                        Highcharts.dateFormat(sdf, this.x) +'  '+ this.y;
                }
            }
	}else{
	   tooltip = {
                formatter: function() {
                        return '<b>'+ this.series.name +'</b><br/>'+
                        this.x +' '+ this.y;
                }
            }
	}
}
    
function Chart(){
    chart = new Highcharts.Chart({
    chart: {
        renderTo:'container'
    },
    colors:['#1DBFAF','#F88464','#3098fb','#ef9951','#8085e9','#f15c80','#c1e454','#389bef','#986e76','#7cdad3'],
    title: {
        text: chartTitle,
        style:{'color':'#333','font-family':'Microsoft Yahei'}
    },
    credits: {
        enabled: false
    },
    plotOptions:{  
	area: {
        shadow: false,
        lineWidth: 0,
        brightness: 1,
        states: {
            hover: {
                lineWidth: 1
            }
        },
        marker: {
            enabled: false,
            states: {
                hover: {
                    enabled: true,
                    symbol: 'diamond',
                    radius: 3,
                    lineWidth: 1
                }
            }
        }
    },
	line: {
        shadow: false,
        lineWidth: 2,
        brightness: 3,
        marker: {
            enabled: true,
            symbol: 'diamond',
            radius: radiusSize,
            brightness: 0.1,
            states: {
                hover: {
                    enabled: false,
                    symbol: 'diamond',
                    radius: 3,
                    lineWidth: 1
                }
            }
        }
    },
    column: {
    	pointPadding: 0.2,
        borderWidth: 0,
        //shadow: false,
        //lineWidth: 1,
        //brightness: 0.2,
        pointWidth:columnWidth,

    } 
	},  
    
    xAxis: xAxis,
    yAxis: [{
        title: {
            text: leftTitle,
            style: {
            font: 'normal 10px Verdana, sans-serif',
            color: leftColor
        	}
        },
        tickInterval:lcm,
        min: 0,
        max:max,
        minPadding: 0.2,   
        maxPadding: 0.2
    }],
    tooltip: tooltip,
    exporting: {
    enabled: false
},

    series: seriesData
});
}    