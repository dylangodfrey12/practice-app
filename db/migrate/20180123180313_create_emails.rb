class CreateEmails < ActiveRecord::Migration[5.1]
  def change
    create_table :emails do |t|
      t.string :name
      t.string :email
      t.string :content
      t.integer :phone

      t.timestamps
    end
  end
end
