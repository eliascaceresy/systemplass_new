class AddPhoneNumberToQuotation < ActiveRecord::Migration[5.1]
  def change
    add_column :quotations, :phone_number, :string
  end
end
