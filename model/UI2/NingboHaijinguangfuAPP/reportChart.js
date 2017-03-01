define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var echarts = require("$UI/NingboHaijinguangfuAPP/js/echarts.min");
	var CurrentRow_user;
	var mychart;
	var nowMonth;
	var nowYear;
	var nowYearValue;
	var nowMonthValue;
	var option;
	var Model = function() {
		this.callParent();
	};
	Model.prototype.modelParamsReceive = function(event) {

		CurrentRow_user = this.params.data.operate;
		var user_name = CurrentRow_user.val("username");
		var nzjrl = this.params.data.nzjrl;
		this.comp("titleBar1").set({
			"title" : user_name + nzjrl + "kWp 光伏电站"
		});
	};
	Model.prototype.modelLoad = function(event) {
		this.comp("Data").setValue("status", true);
		this.modelParamsReceive();
		var me = this;
		// 月度查询初始化
		var nowYearMonth = this.nowYear() + '-' + this.nowMonth();
		if (!nowMonthValue) {
			nowMonthValue = this.nowYear() + this.nowMonth();
		}
		this.comp("labelBtn").set("label", nowMonthValue.substr(0, 4) + '-' + nowMonthValue.substr(4, 2));
		var arr_days = [];
		for (var i = 0; i < getDay(nowMonthValue.substr(0, 4), nowMonthValue.substr(4, 2)); i++) {
			var result = toTwo(i + 1);
			arr_days.push(result);
		}
		var yearMonthData = this.comp("yearMonthData");
		justep.Baas.sendRequest({
			"url" : "/NingboHaijinguangfuAPP/NingboHaijinguangfuAPP_action",
			"action" : "yearMonthDays",
			"async" : false,
			"params" : {
				"USER_UUID" : CurrentRow_user.val("id"),
				"YEARMONTH" : nowMonthValue
			},
			"success" : function(ret) {

				yearMonthData.clear();
				yearMonthData.loadData(ret);
				yearMonthData.refreshData();
			}
		});

		var arr_sum_fdl = [];
		var sum_Month = 0;
		for (var i = 0; i < arr_days.length; i++) {
			var status = true;
			yearMonthData.each(function(param) {
				if (param.row.val("updatetime") == nowMonthValue.substr(0, 4) + nowMonthValue.substr(4, 2) + arr_days[i]) {
					arr_sum_fdl.push(param.row.val("sum_fdl"));
					sum_Month += param.row.val("sum_fdl");
					status = false;
				}
			})
			if (status) {
				arr_sum_fdl.push(0);
				status = true;
			}
		}
		option = {
			backgroundColor : '#FFFFFF',
			color : [ '#3398DB' ],
			title : {
				text : '发电量',
				top : 'auto',
				left : 'center'

			},
			legend : {
				selectedMode : false,
				data : [ '发电量(kWh)' ],
				bottom : '3%'
			},
			tooltip : {
				formatter : "{b}<br/>{a}:{c}kWh",
				trigger : 'item',
				axisPointer : { // 坐标轴指示器，坐标轴触发有效
					type : 'shadow' // 默认为直线，可选为：'line' | 'shadow'
				}
			},
			grid : {
				show : true,
				left : '15%',
				right : '4%',
				bottom : '10%',
				containLabel : true,
				borderWidth : 0
			},
			xAxis : [ {
				type : 'category',
				data : arr_days,
				axisTick : {
					alignWithLabel : true
				}
			} ],
			yAxis : [ {
				type : 'value',
				name : '发电量(kWh)',
				nameLocation : 'middle',
				nameTextStyle : {
					color : '#3DAB9C'
				},
				nameGap : 50,

				axisLine : {
					show : false
				},
				axisTick : {
					show : false
				}
			} ],
			series : [ {
				name : '发电量(kWh)',
				type : 'bar',
				itemStyle : {
					normal : {
						color : '#3DAB9C'
					}
				},
				data : arr_sum_fdl
			} ]
		};
		sum_Month = Math.round(sum_Month * 100) / 100;
		this.getElementByXid("span8").innerHTML = sum_Month + "kWh";
		mychart = echarts.init(this.getElementByXid("div1"));
		mychart.setOption(option);
	};

	Model.prototype.monthBtnClick = function(event) {
		this.comp("Data").setValue("status", true);
		this.modelLoad();

	};

	Model.prototype.yearBtnClick = function(event) {
		this.comp("Data").setValue("status", false);

		nowYear = this.nowYear();
		nowMonth = this.nowMonth();

		if (!nowYearValue) {
			nowYearValue = nowYear;
		}
		this.comp("labelBtn").set("label", nowYearValue);
		var yearMonthData = this.comp("yearMonthData");
		justep.Baas.sendRequest({
			"url" : "/NingboHaijinguangfuAPP/NingboHaijinguangfuAPP_action",
			"action" : "yearMonth",
			"async" : false,
			"params" : {
				"USER_UUID" : CurrentRow_user.val("id"),
				"YEAR" : nowYearValue
			},
			"success" : function(ret) {
				yearMonthData.clear();

				yearMonthData.loadData(ret);
				yearMonthData.refreshData();
			}
		});
		var arr_sum_fdl = [];
		var sum_Year = 0;
		var arr_month = [ '01月', '02月', '03月', '04月', '05月', '06月', '07月', '08月', '09月', '10月', '11月', '12月' ];
		for (var i = 0; i < 12; i++) {
			var status = true;
			yearMonthData.each(function(param) {
				if (param.row.val("updatetime") == nowYearValue + arr_month[i].substr(0, 2)) {
					arr_sum_fdl.push(param.row.val("sum_fdl"));
					sum_Year += param.row.val("sum_fdl");
					status = false;
				}
			})
			if (status) {
				arr_sum_fdl.push(0);
				status = true;
			}
		}
		sum_Year = Math.round(sum_Year * 100) / 100;
		this.getElementByXid("span8").innerHTML = sum_Year + "kWh";
		option.series[0].data = arr_sum_fdl;
		mychart.setOption(option);
	};
	// next
	Model.prototype.nextBtnClick = function(event) {
		if (!this.comp("Data").getCurrentRowID()) {
			if (parseInt(nowYearValue) < parseInt(nowYear)) {
				nowYearValue++;
				// this.comp("labelBtn").set("label", nowYearValue);
			} else {
				// this.comp("labelBtn").set("label", nowYearValue);
			}
			this.yearBtnClick();
		} else {
			if (parseInt(nowMonthValue) < parseInt(this.nowYear() + this.nowMonth())) {

				if (parseInt(nowMonthValue.substr(4, 2)) < parseInt(12)) {
					nowMonthValue = nowMonthValue.substr(0, 4) + toTwo(parseInt(nowMonthValue.substr(4, 2)) + 1);
					// this.comp("labelBtn").set("label", nowMonthValue);
				} else {
					nowMonthValue = (parseInt(nowMonthValue.substr(0, 4)) + 1) + toTwo(01);
					// this.comp("labelBtn").set("label", nowMonthValue);
				}
				this.monthBtnClick();
			}

		}
	};
	// pre
	Model.prototype.preBtnClick = function(event) {
		if (!this.comp("Data").getCurrentRowID()) {
			if (nowYearValue > 2010) {
				nowYearValue--;
				// this.comp("labelBtn").set("label", nowYearValue);
			} else {
				// this.comp("labelBtn").set("label", nowYearValue);
			}
			this.yearBtnClick();
		} else {
			if (parseInt(nowMonthValue.substr(4, 2)) > 1) {
				nowMonthValue = nowMonthValue.substr(0, 4) + toTwo((nowMonthValue.substr(4, 2) - 1));
				// this.comp("labelBtn").set("label", nowMonthValue);
			} else {
				nowMonthValue = (nowMonthValue.substr(0, 4) - 1) + toTwo(12);
				// this.comp("labelBtn").set("label", nowMonthValue);
			}
			this.monthBtnClick();
		}
	};
	// nowYear
	Model.prototype.nowYear = function() {
		var nowDate = new Date();
		return nowDate.getFullYear();
	};
	// nowMonth
	Model.prototype.nowMonth = function() {
		return justep.Date.toString(new Date(), 'MM');
	};
	// 获取每月的天数
	function getDay(Year, Mon) {
		var start = new Date(Year, Mon - 1, 1);
		var end = new Date(Year, Mon, 1);
		var r = (end - start) / (1000 * 60 * 60 * 24);
		return r;
	}
	// 字符拼接
	function toTwo(n) {
		return n < 10 ? '0' + n : '' + n;
	}

	Model.prototype.backBtnClick = function(event){
		history.go(-1);
	};

	return Model;
});