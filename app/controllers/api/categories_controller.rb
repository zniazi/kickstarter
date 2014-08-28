class CategoriesController < ApplicationController
  def index
    @category = Category.find_by_name("Art")
    render :show
  end

  def show
    @category = Category.find(params[:id])
    render :show
  end
end