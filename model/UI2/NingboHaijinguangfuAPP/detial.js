define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	$("<script type = 'text/javascript' src='js/highcharts.js'><\/script>").appendTo("head");
	$("<script type = 'text/javascript' src='js/highcharts-more.js'><\/script>").appendTo("head");
	$("<script type = 'text/javascript' src='js/solid-gauge.js'><\/script>").appendTo("head");
	var w;
	var W;
	var nzjrl;
	var CurrentRow_user;
	var Model = function() {
		this.callParent();
	};

	Model.prototype.modelParamsReceive = function(event) {
		CurrentRow_user = this.params.data.operate;
	};
	Model.prototype.modelLoad = function(event) {
		var me = this;
		
		// 日发电量
		this.modelParamsReceive();
		var user_name = CurrentRow_user.val("username");
		var user_id = CurrentRow_user.val("id");
		var hjmv_fdData = this.comp("hjmv_fdData");
		hjmv_fdData.setFilter(null, "userid = '" + user_id + "' and updatetime between convert(char(10),getdate(),120) and convert(char(10),getdate(),120)+' 23:59:59'");
		hjmv_fdData.refreshData();
		var day_kWh = (Math.round(hjmv_fdData.sum("fdl")*10)/10).toString();		
		numLED("col24", day_kWh);
		
		// 总收入
		hjmv_fdData.setFilter(null, "userid = '" + user_id + "'");
		hjmv_fdData.refreshData();
		var sumEle = hjmv_fdData.sum("fdl");
		//var sumRMB = Math.round(hjmv_fdData.sum("sumRMB")).toString();
		
		
		//CO2排放量
		var co2 = (Math.round(sumEle / 1.666)).toString();	
		
		numLED("col23", co2);
		//节约树木
		numLED("col1", Math.round(co2/39.787878).toString());
		
		//总发电量
		
		numLED("col26",Math.round(sumEle).toString());
		

		
		// 装机容量
		var hj_dzData = this.comp("hj_dzData");
		hj_dzData.setFilter(null, "userid = '" + user_id + "'");
		hj_dzData.refreshData();
		nzjrl = hj_dzData.sum("nzjrl");
		this.getElementByXid("span9").innerHTML = "装机容量:" + nzjrl + "kWp";
		this.getElementByXid("span12").innerHTML = nzjrl * 1000;

		this.comp("titleBar1").set({
			"title" : user_name + nzjrl + "kWp 光伏电站"
		});
		// 当前用户最近设备总功率
		justep.Baas.sendRequest({
			"url" : "/NingboHaijinguangfuAPP/NingboHaijinguangfuAPP_action",
			"action" : "NingboHaijinguangfuAPP",
			"async" : false,
			"params" : {
				"USER_UUID" : user_id
			},
			"error" : function(data) {
				this.comp("FalseDialog").show();
			},
			"success" : function(ret) {
				if (ret.num.length == 0) {
					w = W = 0;
				} else {
					w = 0;
					for (var i = 0; i < ret.num.length; i++) {
						w += ret.num[i];

					}
					w = Math.round(w);
					W = Math.round(w * 200 / nzjrl / 1000);
				}

			}

		});
		
		

		
		$(function() {
			var gaugeOptions = {
				chart : {
					type : 'solidgauge'
				},

				title : null,
				pane : {
					center : [ '50%', '100%' ],
					size : '135%',
					startAngle : -90,
					endAngle : 90,
					background : {
						backgroundColor : (Highcharts.theme && Highcharts.theme.background2) || '#EEE',
						innerRadius : '60%',
						outerRadius : '100%',
						shape : 'arc'
					}
				},
				tooltip : {
					enabled : false
				},
				// the value axis
				yAxis : {
					stops : [ [ 0.1, '#55BF3B' ], // green
					[ 0.5, '#DDDF0D' ], // yellow
					[ 0.9, '#DF5353' ] // red
					],
					lineWidth : 0,
					minorTickInterval : null,
					tickPixelInterval : 400,
					tickWidth : 0,
					title : {
						style : {
							color : (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black',
							fontWeight : "bold",
							fontSize : "12px"
						},
						y : -48
					},
					labels : {
						enabled : false,
						x : 0,
						y : 0,
						zIndex : -1
					},
				},
				plotOptions : {
					solidgauge : {
						dataLabels : {
							y : 0,
							borderWidth : 0,
							useHTML : true
						}
					}
				}
			};
			// The speed gauge
			$('#container-kWp').highcharts(
					Highcharts.merge(gaugeOptions, {
						yAxis : {
							min : 0,
							max : 200,
							title : {
								text : '功率'
							}
						},
						credits : {
							enabled : false
						},
						series : [ {
							name : '功率',
							data : [ W ],
							dataLabels : {
								format : '<div style="text-align:center;margin:0 auto;"><span style="font-size:12px;color:' + ((Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black')
										+ '">' + w + '</span><br/></div>',
							},
							tooltip : {
								valueSuffix : ' km/h'// 为啥没提示呢
							}
						} ]
					}));
		});
		// 传递父对象和数字字符-----------------------------------------------------
		function numLED(xid, str) {
			var parentImg = me.getElementByXid(xid);
			var aImg = parentImg.getElementsByTagName('img');
			fnTime();

			function fnTime() {
				imgLen(str, aImg);
				for (var i = 0; i < str.length; i++) {
					aImg[i].style.display = 'inline';
					if (str.charAt(i) == '.') {
						aImg[i].src = 'timeimg/00.png';
					} else {
						aImg[i].src = 'timeimg/' + str.charAt(i) + '.png';
					}
				}
			}
			function imgLen(str, aImg) {
				var Len = aImg.length - str.length;

				if (Len > 0) {
					for (var i = 0; i < Len; i++) {
						aImg[aImg.length - 1 - i].style.display = 'none';
					}
				} else {
					for (var i = 0; i < aImg.length; i++) {
						aImg[i].style.display = 'inline';
					}
				}
			}
		}
		// ------------------------------------------------------------------------------
	};
	Model.prototype.scrollView2PullDown = function(event) {
		this.modelLoad();
	};

	Model.prototype.col18Click = function(event){
		this.comp("windowDialog1").open({
			"data" : {
				"operate" : CurrentRow_user,
				"nzjrl":nzjrl
			}
		})
	};

	return Model;
});