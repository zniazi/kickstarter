class CategoriesController < ApplicationController
  def index
    render "projects/discover"
  end

  def show
    @category = Category.where(name: params[:name])[0]
    render :show
  end
end
