# == Schema Information
#
# Table name: pictures
#
#  id                        :integer          not null, primary key
#  picture_file_file_name    :string
#  picture_file_content_type :string
#  picture_file_file_size    :integer
#  picture_file_updated_at   :datetime
#  product_id                :integer
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#
# Indexes
#
#  index_pictures_on_product_id  (product_id)
#
# Foreign Keys
#
#  fk_rails_...  (product_id => products.id)
#

class Picture < ApplicationRecord
  belongs_to :product
  has_attached_file :picture_file, styles: { medium: "300x300>", thumb: "200x200>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :picture_file, content_type: /\Aimage\/.*\z/
end
