# == Schema Information
#
# Table name: products
#
#  id               :integer          not null, primary key
#  name             :string
#  description      :text
#  price            :integer
#  weight           :string
#  capacity         :string
#  aasm_state       :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  category_id      :integer
#  subcategory_id   :integer
#  total_heigth     :integer
#  total_large      :integer
#  larger_diameter  :integer
#  smaller_diameter :integer
#  hatch_diameter   :integer
#  applications     :text
#  materials        :string
#  total_width      :integer
#  featured_product :boolean
#  product_offer    :boolean
#
# Indexes
#
#  index_products_on_category_id     (category_id)
#  index_products_on_subcategory_id  (subcategory_id)
#
# Foreign Keys
#
#  fk_rails_...  (category_id => categories.id)
#  fk_rails_...  (subcategory_id => subcategories.id)
#

class Product < ApplicationRecord
  belongs_to :category
  belongs_to :subcategory,optional:true
  has_many :pictures,inverse_of: :product,dependent: :destroy
  accepts_nested_attributes_for :pictures, :reject_if => :all_blank, :allow_destroy => true

  validates :name,presence:true
  validates :price,presence:true
  validates :description,presence:true
  validates :category_id, presence:true
  validates :applications, presence: true

  scope :featured_products, -> {where(featured_product: true)}
end
