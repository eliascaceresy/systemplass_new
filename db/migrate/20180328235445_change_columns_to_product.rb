class ChangeColumnsToProduct < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :dimensions, :string
    add_column :products, :total_heigth, :integer
    add_column :products, :total_large, :integer
    add_column :products, :larger_diameter, :integer
    add_column :products, :smaller_diameter, :integer
    add_column :products, :hatch_diameter, :integer
    add_column :products, :applications, :text
    add_column :products, :materials, :string
  end
end
