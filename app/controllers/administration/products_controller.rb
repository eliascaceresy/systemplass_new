class Administration::ProductsController < ApplicationController
  before_action :set_product,only:[:edit,:update,:destroy,:show]

  def index
    @products = Product.all.order(created_at: :asc)
    render layout: "administration"
  end

  def new
    @product = Product.new
    render layout: "administration"
  end

  def edit
    render layout: "administration"
  end

  def show

  end

  def create
    @product = Product.new(product_params)
    respond_to do |format|
      if @product.save
        format.html{redirect_to administration_products_path,notice:"Producto agregado exitosamente"}
      else
        format.html{render :new}
      end
    end
  end

  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html{redirect_to administration_products_path,notice:"Producto actualizado exitosamente"}
      else
        format.html{redirect_to administration_products_path,alert:"Hubo un error!!"}
      end
    end
  end

  def destroy
    if @product.destroy
      redirect_to administration_products_path,notice:"Producto eliminado exitosamente"
    else
      redirect_to administration_products_path,alert:"Hubo un error!!"
    end
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(
      :name,:description,:price,:weight,:dimensions,
      :capacity,:category_id,:subcategory_id,:total_heigth,
      :total_large,:larger_diameter,:smaller_diameter,
      :hatch_diameter,:applications,:materials,:featured_product,
      :product_offer,
    pictures_attributes: [
        :id, :_destroy, :picture_file
    ])
  end
end
