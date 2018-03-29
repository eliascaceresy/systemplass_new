class AddTotalWidthToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :total_width, :integer
  end
end
