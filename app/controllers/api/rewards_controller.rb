class Api::RewardsController < ApplicationController
  def create
    @reward = Reward.new(reward_params)
    @reward.delivery_date = delivery_date if params[:reward][:delivery_year]
    if @reward.save
      redirect_to edit_api_project_url(@reward.project)
    else
      render json: @reward.errors, status: :unprocessable_entity
    end
  end
  
  def update
    @reward = Reward.find(params[:id])
    puts "valid? #{@reward.valid?}"
    puts reward_params
    if @reward.update(reward_params)
      render json: "hello", status: :ok
    else
      render json: @reward.errors, status: :unprocessable_entity
    end
  end

  private
  def delivery_date
    year = params[:reward][:delivery_year]
    month = params[:reward][:delivery_month]
    Time.new(year, month, 1)
  end

  def reward_params
    params.require(:reward).permit(
      :pledge, :description, :shipping_type, :project_id, :delivery_month, :delivery_year, :limit
    )
  end
end