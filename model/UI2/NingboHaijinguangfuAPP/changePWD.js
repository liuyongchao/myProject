define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Model = function() {
		this.callParent();
	};

	Model.prototype.enterBtnClick = function(event) {
		var loginname = this.comp("loginNameInput").val();
		var username = this.comp("userNameInput").val();
		var oldpwd = this.comp("oldpwdInput").val();
		var newpwd = this.comp("newpwdInput").val();
		var enterpwd = this.comp("enterpwdInput").val();
		// var re = /^[a-zA-Z]\w{5,17}$/;
		if (newpwd != enterpwd) {
			this.comp("messageDialog1").show();
			this.comp("oldpwdInput").set("value", "");
			this.comp("newpwdInput").set("value", "");
			this.comp("enterpwdInput").set("value", "");
		} else {
			var userData = this.comp("userData");
			userData.setFilter(null, "userbh='" + loginname + "' and usersec='" + oldpwd + "'");
			userData.refreshData();
			if (userData.getCount() > 0) {
				userData.setValue('usersec', enterpwd);
				userData.saveData();
				this.comp("messageDialog3").show();
			} else {
				this.comp("messageDialog2").show();
			}

		}

	};

	Model.prototype.loginNameInputBlur = function(event) {
		var loginname = this.comp("loginNameInput").val();
		var userData = this.comp("userData");
		userData.setFilter(null, "userbh = '" + loginname + "'");
		userData.refreshData();
		if (userData.getCount() > 0) {
			var username = userData.getCurrentRow().val("username");
			this.comp("userNameInput").set("value", username);
		}
	};

	Model.prototype.modelParamsReceive = function(event) {
		var status = this.params.data.status;
		if (!status) {
			var username = this.params.data.username;
			this.comp("loginNameInput").set("value", username);
			this.loginNameInputBlur();
		}

	};
	return Model;
});