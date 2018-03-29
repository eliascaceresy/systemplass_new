class ChangeFeaturedToProduct < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :featured_product, :string
    remove_column :products, :product_offer, :string
    add_column :products, :featured_product, :boolean
    add_column :products, :product_offer, :boolean
  end
end
