define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.windowReceiver1Receive = function(event) {
		if (event.params.data.operate === "serach") {
			this.comp("buttonGroup1").set("selected", "serachBtn");
			this.comp("contents1").to(1);
		}
		if (event.params.data.operate === "new") {
			this.comp("buttonGroup1").set("selected", "newBtn");
			this.comp("contents1").to(3);
		}
		if (event.params.data.operate === "my") {
			this.comp("buttonGroup1").set("selected", "myBtn");
			this.comp("contents1").to(2);
		}
	};

	return Model;
});