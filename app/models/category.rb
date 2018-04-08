# == Schema Information
#
# Table name: categories
#
#  id                   :integer          not null, primary key
#  name                 :string
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  portada_file_name    :string
#  portada_content_type :string
#  portada_file_size    :integer
#  portada_updated_at   :datetime
#

class Category < ApplicationRecord

  has_attached_file :portada, styles: { medium: "300x300>", thumb: "200x200>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :portada, content_type: /\Aimage\/.*\z/
  has_many :products
  has_many :subcategories, inverse_of: :category
  accepts_nested_attributes_for :subcategories, :reject_if => :all_blank, :allow_destroy => true

  validates :portada, presence: true
end
