define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var ShellImpl = require("$UI/system/lib/portal/shellImpl");
	require("css!$UI/common/plugin/weui/dist/style/weui.min").load();
	var Model = function(){
		this.callParent();
		var shellImpl = new ShellImpl(this, {
			contentsXid : "contents",
			pageMappings : {
				"main" : {
					url : require.toUrl("./main.w")
				},
				"im" : {
					url : require.toUrl("./im.w")
				}
			}
		});
	};

	Model.prototype.modelLoad = function(event){
		justep.Shell.showPage("main");
	};

	return Model;
});