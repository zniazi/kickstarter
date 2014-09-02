App.Collections.Rewards = Backbone.Collection.extend({
  model: App.Models.Reward,
  comparator: function () {
    return this.get("pledge");
  }
});