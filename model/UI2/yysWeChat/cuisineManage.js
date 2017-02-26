define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
		this.actionUrl = "/baas/yysWeChat/attachment/SimpleFileStore";
	};

	// 点击新增菜品
	Model.prototype.addCuisineClick = function(event) {
		this.comp('cuisineWindowDialog').open();
	};
	// 编辑行菜品信息
	Model.prototype.editCuisine = function(row) {
		this.comp('cuisineWindowDialog').set({
			"title" : "微信公众号"
		});
		this.comp('cuisineWindowDialog').open({
			data : row.toJson()
		});
	}

	// 点击编辑菜品按钮
	Model.prototype.editCuisineClick = function(event) {
		var row = this.comp('picData').getCurrentRow();
		this.editCuisine(row);
	};

	// 双击菜品列表打开编辑框

	Model.prototype.cuisineListDblclick = function(event) {
		var row = this.comp('picData').getCurrentRow();
		this.editCuisine(row);
	};

	// 菜品新增或编辑的保存
	Model.prototype.cuisineWindowDialogReceived = function(event) {
		this.comp('picData').saveData();
		this.comp('picData').refreshData();
	};

	// 搜索菜品
	Model.prototype.selectClick = function(event) {
		var text = this.getElementByXid('selectCondition').value;

		if (text != null && text != "") {
			this.comp('picData').setFilter(
					"filter1",
					"takeout_food.fStatus like '%" + text + "%' or takeout_food.fName like '%" + text + "%' or takeout_food.fDescription like '%" + text + "%' or takeout_food.fPrice like '%" + text
							+ "%'");
		} else {
			this.comp('picData').filters.clear();
		}
		this.comp('picData').refreshData();

	};
	
	//状态Bind-value
	Model.prototype.transUrl = function(row) {
		var src = null;
		if (row.val('wxpic') != null && row.val('wxpic') != "" && row.val('wxpic') != "[]") {
			var imageJson = eval("(" + row.val('wxpic') + ")");
			var realFileName = imageJson[0]["realFileName"];
			var storeFileName = imageJson[0]["storeFileName"];
			var ownerID = row.val('id');
			var operateType = "browse";
			var url = this.actionUrl + '?realFileName=' + realFileName + '&storeFileName=' + storeFileName + '&ownerID=' + ownerID + '&operateType=' + operateType;
			src = require.toUrl(url);
		}

		return src;
	}
	//状态Bind-style
	Model.prototype.transforType = function(row) {
		var a;
		if (row.val('fStatus') == 0) {
			a = "正在热销";
		} else {
			a = "已下架";
		}

		return a;

	}



	return Model;
});