class CategoriesController < ApplicationController

  def index
    @categories = Category.all
    @category = Category.new
  end
  def show
    @category = Category.find(params[:id])
    @bookmarks = @category.bookmarks
    @recipes = @bookmarks.map(&:recipe)
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to categories_path
    else
      render :index, status: :unprocessable_entity
    end
  end

  private
  def category_params
    params.require(:category).permit(:name)
  end
end
