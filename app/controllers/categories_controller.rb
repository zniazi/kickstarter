class CategoriesController < ApplicationController
  def index
    render "projects/discover"
  end

  def show
    @category = Category.find(params[:id])
    render :show
  end
end
