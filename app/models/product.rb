class Product < ApplicationRecordry
  belongs_to :category
  belongs_to :subcategory,optional:true
  has_many :pictures,inverse_of: :product,dependent: :destroy
  accepts_nested_attributes_for :pictures, :reject_if => :all_blank, :allow_destroy => true

  validates :name,presence:true
  validates :price,presence:true
  validates :description,presence:true
  validates :category_id, presence:true
end
