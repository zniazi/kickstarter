App.Collections.Projects = Backbone.Collection.extend({
  model: App.Models.Project,
  url: "/api/projects",

  getOrFetch: function (id) {
    var projects = this;

    var project;
    if (project = this.get(id)) {
      project.fetch();
    } else {
      project = new App.Models.Project({ id: id });
      project.fetch({
        success: function () { projects.add(project); }
      });
    }

    return project;
  }
});

App.Collections.projects = new App.Collections.Projects();