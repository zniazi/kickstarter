App.Collections.Categories = Backbone.Collection.extend({
  model: App.Models.Category,
  url: "/api/categories",

  getOrFetch: function (id) {
    var categories = this;

    var category;
    if (category = this.get(id)) {
      category.fetch();
    } else {
      category = new App.Models.Category({ id: id });
      category.fetch({
        success: function () { categories.add(category); }
      });
    }

    return category;
  }
});

App.Collections.categories = new App.Collections.Categories();

