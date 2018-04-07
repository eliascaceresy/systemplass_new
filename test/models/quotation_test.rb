# == Schema Information
#
# Table name: quotations
#
#  id           :integer          not null, primary key
#  name         :string
#  email        :string
#  subject      :string
#  message      :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  phone_number :string
#

require 'test_helper'

class QuotationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
