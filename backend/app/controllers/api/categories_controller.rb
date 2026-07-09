class Api::CategoriesController < ApplicationController
  def index
    categories = Category.order(:name)
    render json: categories
  end

  def create
    category = Category.new(category_params)

    if category.save
      render json: Category.order(:name)
    else
      render json: { errors: category.errors.full_messages }, status: :unprocessable_content
    end
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
