class Admin::DashboardController < ApplicationController
  def show
  end
end

class ApplicationController < ActionController::Base
  http_basic_authenticate_with :name => ENV["HTTP_AUTH_USER"], :password => ENV["HTTP_AUTH_USER"]
end