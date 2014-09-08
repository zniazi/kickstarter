App.Views.ProjectsShow = Backbone.View.extend({
  template: JST["projects/show"],

  events: {
    "click div.buy-button": "makePayment"
  },

  initialize: function () {
    this.listenTo(this.model, "sync", this.render);
  },

  render: function () {
    var view = this;
    var renderedContent = this.template({
      project: this.model
    });

    this.$el.html(renderedContent);
    return this;
  },

  makePayment: function (event) {
    event.preventDefault();
    var handler = StripeCheckout.configure({
      key: "<%= Rails.configuration.stripe[:publishable_key] %>",
      token: function(token) {
      }
    });

    handler.open({
      name: "Kickstarter-Lite",
      description: "Back this project!",
      amount: 100
    });
  }
});