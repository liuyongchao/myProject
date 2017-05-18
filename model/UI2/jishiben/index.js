define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var ShellImpl = require("$UI/system/lib/portal/shellImpl");
	var Model = function(){
		this.callParent();
		var shellImpl = new ShellImpl(this, {
			contentsXid : "pages",
			wingXid : "wing",
			pageMappings : {
				"list" : {
					url : "$UI/jishiben/list.w"
				},
				"classSetting" : {
					url : "$UI/jishiben/classSetting.w"
				}
			}
		});
	};


	

	Model.prototype.setBtnClick = function(event){
		justep.Shell.showPage("classSetting");
	};


	

	return Model;
});