define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Model = function() {
		this.callParent();

		// bind-value:user,valueUpdate: 'afterkeydown'
		this.user = justep.Bind.observable('老白');
		this.say = justep.Bind.observable('聊技术');
		this.result = justep.Bind.computed(function() {
			return this.user.get() + " " + this.say.get();
		}, this);
		this.result_output = justep.Bind.computed(function() {
			return this.user.get() + " " + this.say.get();
		}, this);
	};
	
	return Model;
});