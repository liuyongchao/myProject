define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
		this.months= ['Jan', 'Feb', 'Mar', 'etc']
	};

	return Model;
});