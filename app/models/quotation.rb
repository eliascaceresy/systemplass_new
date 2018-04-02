# == Schema Information
#
# Table name: quotations
#
#  id         :integer          not null, primary key
#  name       :string
#  email      :string
#  subject    :string
#  message    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Quotation < ApplicationRecord

  validates :name, presence: true
  validates :email, presence: true
  validates :subject, presence: true
  validates :message, presence: true
end
