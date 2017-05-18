define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};

	Model.prototype.addBtnClick = function(event){
		var data = this.comp("classData");
		data.newData({
			"defaultValues" : [ {
				"fID" : justep.UUID.createUUID(),
				"fType" : "支出"
			} ]
		})
	};

	Model.prototype.saveBtnClick = function(event){
		this.comp("classData").saveData();
	};

	Model.prototype.delBtnClick = function(event){
		var row = event.bindingContext.$object;
		this.comp("classData").deleteData(row);
	};

	return Model;
});