class CategoriesController < ApplicationController

  def show
    @category = Category.find(params[:id])
    @s = @category.products.order(created_at: :desc)
  end

end
