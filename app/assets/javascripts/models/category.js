App.Models.Category = Backbone.Model.extend({
  urlRoot: "/api/categories",
  subcategories: function () {
    if (!this._subcategories) {
      this._subcategories = new App.Collections.Subcategories();
    }

    return this._subcategories;
  },

  parse: function (response) {
    if (response.subcategories) {
      this.subcategories().set(response.subcategories, { parse: true });
      delete response.subcategories;
    }

    return response;
  }
});