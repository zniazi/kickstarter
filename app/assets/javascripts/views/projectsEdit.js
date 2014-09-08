App.Views.ProjectsEdit = Backbone.View.extend({
  template: function () {
  	switch(parseInt(this._view)) {
		case 1:
			return JST["projects/edit-basics"];
			break;
		case 2:
			return JST["projects/edit-rewards"];
			break;
    case 3:
			return JST["projects/edit-story"];
			break;
    case 4:
			return JST["projects/edit-user"];
			break;
		default:
			return JST["projects/edit-basics"];
			break;
  	}
  },

  events: {
    "submit form": "submit",
    "change #product-category": "renderSubcategory",
		"click .edit-nav": "renderEdit",
    "click .add-reward": "addRewardView",
    "change form": "saveChanges"
  },

  initialize: function () {
    App.Collections.categories.fetch();
    App.Collections.locations.fetch();
    this.listenTo(App.Collections.categories, "sync", this.render);
    this.listenTo(App.Collections.locations, "sync", this.render);
		this._view = 1;
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

  // var renderedContent = this.template()({
  //   project: this.model, primeCategory: primeCategory,
  //   primaryCategories: App.Collections.categories, locations: App.Collections.locations
  // });
  //
  // this.$el.html(renderedContent);
  //
  // this.render();

  renderSubcategory: function (event) {
    var newId = $(event.currentTarget).val();
    var primeCategory = App.Collections.categories.get(newId);
    var subcategories = primeCategory.subcategories();
    this.$("select#project_subcategory").html("");
    this.$("select#project_subcategory").append("<option value='" + "'>"
       + "Subcategory (optional)" + "</option>");
    subcategories.each(function (subcategory) {
      var html = "<option value='" + subcategory.id + "' >" +
        subcategory.escape("name") + "</option>"
      this.$("select#project_subcategory").append(html);
    });
  },

	renderEdit: function (event) {
		event.preventDefault();
    if (this._changed) {
      this._changed = false;
    }

    this._view = $(event.target).attr("data-id");
    console.log($(event.target))
		this.render();
	},

  addRewardView: function (event) {
  },

  saveChanges: function (event) {
    this._changed = true;
  }
});





