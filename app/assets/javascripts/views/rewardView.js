App.Views.RewardView = Backbone.View.extend({
	template: JST["projects/reward"],
	
	initialize: function (options) {
		this.counter = options.counter;
		this.project = options.project;
	},
	
	render: function () {
		var renderedContent = this.template({
			counter: this.counter,
			project: this.project
		});
		this.$el.html(renderedContent);
		
		return this;
	}
})