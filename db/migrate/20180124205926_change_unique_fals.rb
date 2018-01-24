class ChangeUniqueFals < ActiveRecord::Migration[5.1]
  def change
    change_column :emails, :email, :string, unique: false
  end
end
