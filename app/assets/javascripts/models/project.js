App.Models.Project = Backbone.Model.extend({
  urlRoot: "/api/projects",
  creator: function () {
    if (!this._creator) {
      this._creator = new App.Models.User();
    }

    return this._creator;
  },

  location: function () {
    if (!this._location) {
      this._location = new App.Models.Location();
    }

    return this._location;
  },

  category: function () {
    if (!this._category) {
      this._category = new App.Models.Category();
    }

    return this._category;
  },

  subcategory: function () {
    if (!this._subcategory) {
      this._subcategory = new App.Models.Location();
    }

    return this._subcategory;
  },

  parse: function (response) {
    if (response.creator) {
      this.creator().set(response.creator, { parse: true });
      delete response.creator;
    }

    if (response.location) {
      this.location().set(response.location, { parse: true });
      delete response.location;
    }

    if (response.category) {
      this.category().set(response.category, { parse: true });
      delete response.category;
    }

    if (response.subcategory) {
      this.subcategory().set(response.subcategory, { parse: true });
      delete response.subcategory;
    }

    return response;
  }
});