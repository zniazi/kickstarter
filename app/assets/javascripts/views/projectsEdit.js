App.Views.ProjectsEdit = Backbone.CompositeView.extend({
  template: function () {
  	switch(parseInt(this._view)) {
		case 1:
			return JST["projects/edit-basics"];
			break;
		case 2:
			return JST["projects/edit-rewards"];
			break;
    case 3:
			return JST["projects/edit-story"];
			break;
    case 4:
			return JST["projects/edit-user"];
			break;
		default:
			return JST["projects/edit-basics"];
			break;
  	}
  },

  events: {
    "submit form": "submit",
    "change #product-category": "renderSubcategory",
		"click .edit-nav": "renderEdit",
    "click .add-reward": "addRewardView",
    "change form": "saveChanges",
		"click div.submit-rewards": "submitRewards"
  },

  initialize: function () {
    App.Collections.categories.fetch();
    App.Collections.locations.fetch();
    this.listenTo(App.Collections.categories, "sync", this.render);
    this.listenTo(App.Collections.locations, "sync", this.render);
		this.listenTo(this.model, "sync", this.addRewardViews)
		this._view = 4;
		this.counter = 1;
  },
	
	addRewardViews: function () {
		var view = this;
				
		this.model.rewards().each(function (reward) {
			var rewardView = new App.Views.RewardView({
				counter: view.counter++,
				project: view.model
			});
			view.addSubview(".edit-form-rewards", rewardView);
		});
	},

  render: function () {
    var renderedContent = this.template()({
      project: this.model, primeCategory: this.model.category(),
      primaryCategories: App.Collections.categories, locations: App.Collections.locations
    });
    this.$el.html(renderedContent);
		this.renderSubviews();
		
    return this;
  },

  submit: function (event) {
    event.preventDefault();
		console.log($(event.currentTarget))
    var params = $(event.currentTarget).serializeJSON();
	if (params["project"]) {
	    this.model.set(params["project"]);
	    this.model.save();
	} else if (params["user"]) {
		this.model.creator().set(params["user"]);
		this.model.creator().save();
	}
  },
	
	submitRewards: function (event) {
		var view = this;
		
		_($("div.edit-form-rewards #reward-form")).each(function (reward) {
			var id = $(reward).attr("data-id");			
			view.model.rewards().at(id).set($(reward).serializeJSON()["reward"]);
			view.model.rewards().at(id).save();
		});
	},

  renderSubcategory: function (event) {
    var newId = $(event.currentTarget).val();
    var primeCategory = App.Collections.categories.get(newId);
    var subcategories = primeCategory.subcategories();
    this.$("select#project_subcategory").html("");
    this.$("select#project_subcategory").append("<option value='" + "'>"
       + "Subcategory (optional)" + "</option>");
    subcategories.each(function (subcategory) {
      var html = "<option value='" + subcategory.id + "' >" +
        subcategory.escape("name") + "</option>"
      this.$("select#project_subcategory").append(html);
    });
  },

	renderEdit: function (event) {
		event.preventDefault();
    if (this._changed) {
      this._changed = false;
    }

    this._view = $(event.target).attr("data-id");
		this.render();
	},

  addRewardView: function (event) {
		var view = this;
		var newReward = new App.Models.Reward
		newReward.set({ project_id: this.model.id })
		this.model.rewards().add(newReward);
		var newRewardView = new App.Views.RewardView({
			counter: view.counter++,
			project: view.model
		});
		this.addSubview(".edit-form-rewards", newRewardView);
  },

  saveChanges: function (event) {
    this._changed = true;
  }
});





