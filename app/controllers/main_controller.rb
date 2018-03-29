class MainController < ApplicationController
  def home
    @products = Product.featured_products.order(created_at: :asc)
  end

  def about

  end

  def services

  end

  def contact

  end
end
