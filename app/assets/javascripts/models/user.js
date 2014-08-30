App.Models.User = Backbone.Model.extend({
  urlRoot: "/users",
  projects: function () {
    if (!this._projects) {
      this._projects = new App.Collections.Projects()
    }

    return this._projects;
  },

  parse: function (response) {
    if (response.projects) {
      this.projects().set(response.projects, { parse: true });
      delete response.projects;
    }

    return response;
  }
});