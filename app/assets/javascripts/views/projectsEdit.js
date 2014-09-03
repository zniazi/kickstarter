App.Views.ProjectsEdit = Backbone.View.extend({
  template: JST["project/edit"],
  events: {
    "submit form": "submit",
    "change #product_category": "subcategoryRender"
  },

  initialize: function () {
    App.Collections.categories.fetch();
    App.Collections.locations.fetch();
    this.listenTo(App.Collections.categories, "sync", this.render);
    this.listenTo(App.Collections.locations, "sync", this.render);
  },

  render: function () {
    var renderedContent = this.template({
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

  subcategoryRender: function (event) {
    var newId = $(event.currentTarget).val();
    var primeCategory = App.Collections.categories.get(newId)
    var renderedContent = this.template({
      project: this.model, primeCategory: primeCategory,
      primaryCategories: App.Collections.categories, locations: App.Collections.locations
    })
    this.$el.html(renderedContent);

    return this;
  }
});