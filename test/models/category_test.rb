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

require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
