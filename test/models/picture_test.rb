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

require 'test_helper'

class PictureTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
