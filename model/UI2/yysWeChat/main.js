define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Model = function() {
		this.callParent();
	};

	
	

	Model.prototype.doingBtnClick = function(event){
		this.comp("popMenu2").show();
	};

	

	Model.prototype.item1Click = function(event){
	this.comp("windowContainer1").set({src:"$UI/yysWeChat/fsgy.w"});
	this.comp("windowContainer1").refresh();
	};

	

	Model.prototype.searchBtnClick = function(event){
	this.comp("popMenu3").show();
	};

	

	Model.prototype.aboutUSBtnClick = function(event){
		this.comp("popMenu1").show();
	};

	

	Model.prototype.item2Click = function(event){
	this.comp("windowContainer1").set({src:"$UI/yysWeChat/fsgk.w"});
	this.comp("windowContainer1").refresh();
	};

	

	Model.prototype.item7Click = function(event){
	this.comp("windowContainer1").set({src:"$UI/yysWeChat/zwwb.w"});
	this.comp("windowContainer1").refresh();
	};

	

	Model.prototype.item12Click = function(event){
	this.comp("windowContainer1").set({src:"$UI/yysWeChat/bmcx.w"});
	this.comp("windowContainer1").refresh();
	};

	

	Model.prototype.item9Click = function(event){
	this.comp("windowContainer1").set({src:"$UI/yysWeChat/zxxx.w"});
	this.comp("windowContainer1").refresh();
	};

	

	Model.prototype.item11Click = function(event){
	this.comp("windowContainer1").set({src:"$UI/yysWeChat/fzxc.w"});
	this.comp("windowContainer1").refresh();
	};

	

	Model.prototype.item13Click = function(event){
	this.comp("windowContainer1").set({src:"$UI/yysWeChat/jhsy.w"});
	this.comp("windowContainer1").refresh();
	};

	

	return Model;
});