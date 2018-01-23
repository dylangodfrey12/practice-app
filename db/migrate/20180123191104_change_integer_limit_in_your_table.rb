class ChangeIntegerLimitInYourTable < ActiveRecord::Migration[5.1]
  def change
    change_column :emails, :phone, :integer, limit: 8
  end
end
