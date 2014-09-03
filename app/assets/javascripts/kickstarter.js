window.App = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    App.Collections.categories.fetch();
    new App.Routers.AppRouter();
    Backbone.history.start();
  }
};

$(document).ready(function(){
  App.initialize();
});
