class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.string :dimensions
      t.string :weight
      t.string :capacity
      t.string :aasm_state
      t.string :product_offer
      t.string :featured_product

      t.timestamps
    end
  end
end
