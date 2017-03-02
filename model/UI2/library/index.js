define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};

	Model.prototype.col7Click = function(event){
		this.comp("windowDialog1").open({
			"data" : {
				"operate" : "serach"
			}
		})
	};
	

	Model.prototype.col17Click = function(event){
		this.comp("windowDialog1").open({
			"data" : {
				"operate" : "new"
			}
		})
	};
	

	Model.prototype.col21Click = function(event){
		this.comp("windowDialog1").open({
			"data" : {
				"operate" : "my"
			}
		})
	};
	

	return Model;
});