define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};

	Model.prototype.modelParamsReceive = function(event){
		var data = this.comp("accontData");
		data.clear();
		if(event.params.data.operate == 'new'){
			data.newData({
				"defaultValues" : [ {
					"fID" : justep.UUID.createUUID(),
					"fCreateTime" : new Date(),
					"fDate" : new Date(),
					"fType" : '支出',
					"fClass" : this.defaultClass("支出")
				} ]
			})
		}else if(event.params.data.operate == 'edit'){
			data.loadData([event.params.data.rowData]);
			data.first();
		}
	};
	
	Model.prototype.defaultClass = function(type){
		var rows = this.comp("classData").find(["fType"],[type]);
		return rows.length> 0 ? rows[0].val("fClass") : "";
	};

	Model.prototype.saveBtnClick = function(event){
		this.owner.send(this.comp("accontData").getCurrentRow());
		this.comp("window").close();
	};

	Model.prototype.accontDataValueChanged = function(event){
		if(event.col=="fType"){
			event.row.val("fClass",this.defaultClass(event.value));
		}
	};

	return Model;
});