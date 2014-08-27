class RewardsController < ApplicationController
  def create
    @reward = Reward.new(reward_params)
    @reward.save
    redirect_to edit_project_url(@reward.project)
  end
  
  private
  def reward_params
    params.require(:reward).permit(
      :pledge, :description, :delivery_date, :shipping_type, :project_id
    )
  end
end
