App.Collections.Locations = Backbone.Collection.extend({
  url: "/api/locations",
  model: App.Models.Location
});

App.Collections.locations = new App.Collections.Locations();