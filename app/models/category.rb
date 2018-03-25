class Category < ApplicationRecord
  has_many :products
  has_many :subcategories, inverse_of: :category
  accepts_nested_attributes_for :subcategories, :reject_if => :all_blank, :allow_destroy => true
end
