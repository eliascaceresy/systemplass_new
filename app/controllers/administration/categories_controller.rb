class Administration::CategoriesController < ApplicationController
  before_action :set_category,only:[:edit,:update]

  def index
    @categories = Category.all.order(created_at: :asc)
    render layout: "administration"
  end

  def new
    @category = Category.new
    render layout: "administration"
  end

  def edit
    render layout: "administration"
  end

  def create
    @category = Category.new(category_params)
    respond_to do |format|
      if @category.save
        format.html{redirect_to administration_categories_path,notice:"Categoría agregada exitosamente"}
      else
        format.html{redirect_to administration_categories_path,alert:"Hubo un error!!"}
      end
    end
  end

  def update
    respond_to do |format|
      if @category.update(category_params)
        format.html{redirect_to administration_categories_path,notice:"Categoría actualizada exitosamente"}
      else
        format.html{redirect_to administration_categories_path,alert:"Hubo un error!!"}
      end
    end
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name, :portada,
    subcategories_attributes: [
        :id, :_destroy, :name
    ])
  end

end
