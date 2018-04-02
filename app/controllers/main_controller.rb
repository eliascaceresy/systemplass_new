class MainController < ApplicationController
  def home
    @products = Product.featured_products.order(created_at: :asc).last(8)
  end

  def about

  end

  def services

  end

  def contact
    @quotation = Quotation.new
  end
end
