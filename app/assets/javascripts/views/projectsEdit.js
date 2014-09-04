App.Views.ProjectsEdit = Backbone.View.extend({
  template: function () {		
  	switch(parseInt(this._view)) {
		case 1:
			console.log(1);
			return JST["projects/edit-basics"];
			break;
		case 2:
			console.log(2);
			return JST["projects/edit-rewards"];
			break;
		default:
			return JST["projects/edit-basics"];
			break;
  	}
  },
	
  events: {
    "submit form": "submit",
    "change #product_category": "renderSubcategory",
		"click .edit-nav": "renderEdit"
  },

  initialize: function () {
    App.Collections.categories.fetch();
    App.Collections.locations.fetch();
    this.listenTo(App.Collections.categories, "sync", this.render);
    this.listenTo(App.Collections.locations, "sync", this.render);
		this._view = 2;
  },

  render: function () {
    var renderedContent = this.template()({
      project: this.model, primeCategory: this.model.category(),
      primaryCategories: App.Collections.categories, locations: App.Collections.locations
    });
    this.$el.html(renderedContent);

    return this;
  },

  submit: function (event) {
    event.preventDefault();

    var params = $(event.currentTarget).serializeJSON();
    this.model.update(params["project"]);
  },

  renderSubcategory: function (event) {
    var newId = $(event.currentTarget).val();
    var primeCategory = App.Collections.categories.get(newId)
    var renderedContent = this.template({
      project: this.model, primeCategory: primeCategory,
      primaryCategories: App.Collections.categories, locations: App.Collections.locations
    })
    this.$el.html(renderedContent);

    return this;
  },
	
	renderEdit: function (event) {
		event.preventDefault();
    this._view = $(event.target).attr("data-id");
		this.render();
	}
});





