class ChangephoneNumberType < ActiveRecord::Migration[7.1]
  def change
    change_column(:users, :phone_number,:integer)
  end
end
