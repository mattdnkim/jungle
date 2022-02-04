class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV["HTTP_AUTH_USER"], password: ENV["HTTP_AUTH_PASSWORD"]
  def show
   @product_count = Product.count
   @category_count = Category.count
  end

end

# Display a count of how many products are in the database
# Display a count of how many categories are in the database
