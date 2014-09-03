class CategoriesController < ApplicationController
  def index
    render "projects/learn"
  end

  def show
    @category = Category.find(params[:id])
    render :show
  end
end
