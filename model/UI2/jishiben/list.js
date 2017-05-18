define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.button1Click = function(event) {
		this.comp("windowDialog1").open({
			"data" : {
				"operate" : "new"
			}
		})

	};

	Model.prototype.windowDialog1Received = function(event){
		this.comp("accontData").saveData();
	};

	Model.prototype.editClick = function(event){
		var row = event.bindingContext.$object;
		this.comp("windowDialog1").open({
			"data" : {
				"operate" : "edit",
				"rowData":row.toJson()
			}
		})
	};

	Model.prototype.delBtnClick = function(event){
		var row = event.bindingContext.$object;
		this.comp("accontData").deleteData(row);
		this.comp("accontData").saveData();
	};

	Model.prototype.backBtnClick = function(event){
		justep.Shell.showLeft();
	};

	return Model;
});