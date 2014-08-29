App.Routers.AppRouter = Backbone.Router.extend({
  routes: {
    "": "kickstarterIndex",
    "projects/new": "projectsNew",
    "projects/:id": "projectsShow"
  },

  kickstarterIndex: function () {
    var indexView = new App.Views.KickstarterIndex({
      collection: App.Collections.projects
    });
    this._swapView(indexView);
  },

  projectsNew: function () {
    var newView = new App.Views.ProjectsNew();
    this._swapView(newView);
  },

  projectsShow: function (id) {
    var project = App.Collections.projects.getOrFetch(id);

    var showView = new App.Views.ProjectsShow({
      model: project
    });

    this._swapView(showView);
  },

  _swapView: function (newView) {
    this._currentView && this._currentView.remove();
    $("body").html(newView.render().$el);

    this._currentView = newView;
  }
});