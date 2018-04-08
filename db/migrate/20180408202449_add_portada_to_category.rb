class AddPortadaToCategory < ActiveRecord::Migration[5.1]
  def change
    add_attachment :categories, :portada
  end
end
