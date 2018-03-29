class ProductsController < ApplicationController

  def index
    if params[:category].present? && params[:subcategory].present?
      category = Category.find(params[:category])
      subcategory = Subcategory.find(params[:subcategory])
      @products = Product.where(category:category).where(subcategory:subcategory)
    elsif params[:category].present?
      category = Category.find(params[:category])
      @products = Product.where(category:category)
    end
  end

  def show
    @product = Product.find(params[:id])
  end

end
