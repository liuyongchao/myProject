define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Model = function(){
		this.callParent();
		
	


	Model.prototype.imContentClick = function(event){
		justep.Shell.showPage("im");
	};
	


























	return Model;
});