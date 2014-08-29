App.Views.ProjectsEdit = Backbone.View.extend({
  template: JST["project/edit"],
  events: {
    "submit form": "submit"
  },

  render: function () {
    var renderedContent = this.template({ project: this.model });
    this.$el.html(renderedContent);

    return this;
  },

  submit: function (event) {
    event.preventDefault();

    var params = $(event.currentTarget).serializeJSON();
    this.model.update(params["project"], {
      success: function () {
      }
    });
  }
});