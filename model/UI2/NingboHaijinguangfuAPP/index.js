define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Model = function() {
		this.callParent();
	};
	Model.prototype.rememberChange = function(event) {
		if (!this.comp("remember").value) {
			localStorage.setItem("status", false);

		} else {
			localStorage.setItem("status", true);
		}
	};
	Model.prototype.modelLoad = function(event) {
		var me = this;
		var memoryData = me.comp("memoryData");
		if (localStorage.getItem('status') == 'true') {
			this.comp("remember").set("value", true);
			memoryData.ref("username").set(localStorage.getItem('username'));
			memoryData.ref("userpassword").set(localStorage.getItem('userpassword'));
		} else {
			this.comp("remember").set("value", false);
			localStorage.setItem("username", "");
			localStorage.setItem("userpassword", "");
			memoryData.ref("username").set(localStorage.getItem('username'));
			memoryData.ref("userpassword").set(localStorage.getItem('userpassword'));
		}
	};
	/* 用户登录 */
	Model.prototype.loginBtnClick = function(event) {
		var username = this.comp("usernameInput").val();
		var userpassword = this.comp("passwordInput").val();

		localStorage.setItem("username", username);
		localStorage.setItem("userpassword", userpassword);

		var userData = this.comp("userData");
		userData.setFilter("username", "userbh='" + username + "' and usersec='" + userpassword + "'");
		userData.refreshData();
		if (userData.count() > 0) {
			var CurrentRow_user = this.comp("userData").getCurrentRow();
			this.comp("loginBtn").set("disabled", true);
			this.comp("windowDialog1").open({
				"data" : {
					"operate" : CurrentRow_user
				}
			});
		} else {
			this.comp("messageDialog1").show();
		}
	};

	Model.prototype.changePWDBtnClick = function(event) {
		this.comp("windowDialog2").open({
			"data" : {
				"status" : !(this.comp("remember").value),
				"username" : this.comp("usernameInput").val()
			}
		});
	};
	Model.prototype.windowDialog1Close = function(event) {
		this.comp("loginBtn").set("disabled", false);
	};
	return Model;
});