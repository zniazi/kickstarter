window.App = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    new App.Routers.AppRouter();
    Backbone.history.start();
  }
};

$(document).ready(function(){
  App.initialize();
});
