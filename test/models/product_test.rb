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

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
