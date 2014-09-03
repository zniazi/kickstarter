class CategoriesController < ApplicationController
  def index
    @categories = Category.primary_categories
    render :index
  end

  def show
    @category = Category.find(params[:id])
    render :show
  end
end
