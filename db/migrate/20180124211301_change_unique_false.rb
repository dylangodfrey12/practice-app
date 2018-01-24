class ChangeUniqueFalse < ActiveRecord::Migration[5.1]
  def change
    remove_index :emails, :email
  end
end
