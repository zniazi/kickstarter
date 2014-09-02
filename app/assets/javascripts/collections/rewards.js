App.Collections.Rewards = Backbone.Collection.extend({
  url: "/api/rewards",
  model: App.Models.Reward,
  comparator: function () {
    return this.get("pledge");
  }
});