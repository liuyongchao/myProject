define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};

	Model.prototype.okbtnClick = function(event){
		var row = this.comp('picDetailData').getCurrentRow();
		this.comp('windowReceiver').windowEnsure(row);
	};

	Model.prototype.windowReceiverReceive = function(event){
		this.comp('picDetailData').clear();
		if(event.data == null){
			this.comp('picDetailData').newData({
				defaultValues :[{
					fID : justep.UUID.createUUID()
					
				}]
			})
		}else{
			this.comp('picDetailData').loadData([ event.data ]);
			this.comp('picDetailData').first();
		}
	
	};

	Model.prototype.cancelClick = function(event){
		this.comp('windowReceiver').windowCancel();
		
	};

	return Model;
});