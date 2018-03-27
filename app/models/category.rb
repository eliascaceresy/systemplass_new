# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Category < ApplicationRecord
  has_many :products
  has_many :subcategories, inverse_of: :category
  accepts_nested_attributes_for :subcategories, :reject_if => :all_blank, :allow_destroy => true
end
