class RewardsController < ApplicationController
  def create
    @reward = Reward.new(reward_params)
    @reward.delivery_date = delivery_date
    @reward.save
    flash[:error] = @reward.errors.full_messages
    redirect_to edit_project_url(@reward.project)
  end

  private
  def delivery_date
    year = params[:reward][:delivery_year]
    month = params[:reward][:delivery_month]
    Time.new(year, month, 1)
  end

  def reward_params
    params.require(:reward).permit(
      :pledge, :description, :shipping_type, :project_id
    )
  end
end
