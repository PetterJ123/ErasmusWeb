class AddUsernameToUser < ActiveRecord::Migration[5.0]
  def change
    change_table :users do |u|
        add_column :users, :username, :string
        u.string :username
      end
  end
  end
