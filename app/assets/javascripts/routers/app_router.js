App.Routers.AppRouter = Backbone.Router.extend({
  routes: {
    "projects/:id/edit": "projectsEdit",
    "projects/:id": "projectsShow"
  },

  projectsNew: function () {
    var newView = new App.Views.ProjectsNew();
    this._swapView(newView);
  },

  projectsEdit: function (id) {
    var project = App.Collections.projects.getOrFetch(id);
    var editView = new App.Views.ProjectsEdit({ model: project });
    this._swapView(editView)
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