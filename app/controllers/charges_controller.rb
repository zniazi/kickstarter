class ChargesController < ApplicationController
  def new
  end

  def create
    # Amount in cents
    @amount = 50

    customer = Stripe::Customer.create(
      email: "customer@kickstarter-lite.com",
      card: params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      customer: customer.id,
      amount: @amount,
      description: "Kickstarter-Lite Customer",
      currency: "usd"
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_path
  end
end
