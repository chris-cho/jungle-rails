class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV["HTTP_BASIC_USER"],
  password: ENV["HTTP_BASIC_PASSWORD"],
  if: -> { ENV["HTTP_BASIC_PASSWORD"].present? }
  def show
  end

  def count_products
    @count_products ||= Product.count
  end
  helper_method :count_products

  def count_categories
    @count_products ||= Category.count
  end
  helper_method :count_categories

end
