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

  backers: function () {
    if (!this._backers) {
      this._backers = new App.Collections.Users();
    }

    return this._backers;
  },

  rewards: function () {
    if (!this._rewards) {
      this._rewards = new App.Collections.Rewards();
    }

    return this._rewards;
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

    if (response.backers) {
      this.backers().set(response.backers, { parse: true });
      delete response.backers;
    }

    if (response.rewards) {
      this.rewards().set(response.rewards, { parse: true });
      delete response.rewards;
    }

    return response;
  }
});