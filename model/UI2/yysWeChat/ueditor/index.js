define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	$("<script src='./ueditor.config.js'></script>").appendTo("head");
	$("<script src='./ueditor.all.min.js'></script>").appendTo("head");
	$("<script src='./lang/zh-cn/zh-cn.js'></script>").appendTo("head");
	
	var Model = function(){
		this.callParent();
		//window.UEDITOR_HOME_URL = "/ueditor/";
		var ue = UE.getEditor('editor');
}
	Model.prototype.modelLoad = function(event){
	
	};

	return Model;
});