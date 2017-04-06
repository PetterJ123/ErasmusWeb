class AddUsernameToUser < ActiveRecord::Migration[5.0]
  def up
    change_table users do |u|
        add_column :users, :username, :string
        u.change :username

        u.string :username
      end
  end

  def down
    change_table :username
      drop_table :username
    end
  end
