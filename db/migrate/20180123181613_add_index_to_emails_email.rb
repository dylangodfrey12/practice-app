class AddIndexToEmailsEmail < ActiveRecord::Migration[5.1]
  def change
        add_index :emails, :email, unique: true

  end
end
