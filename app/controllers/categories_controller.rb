class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    render :show
  end
end
