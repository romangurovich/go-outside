class RemoveColumnsFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :confirmation_token # Only if using reconfirmable
    remove_column :users, :confirmed_at # Only if using reconfirmable
    remove_column :users, :confirmation_sent_at # Only if using reconfirmable
    remove_column :users, :unconfirmed_email # Only if using reconfirmable
  end

  def down
    add_column :users, :confirmation_token, :string # Only if using reconfirmable
    add_column :users, :confirmed_at, :datetime # Only if using reconfirmable
    add_column :users, :confirmation_sent_at, :datetime # Only if using reconfirmable
    add_column :users, :unconfirmed_email, :string # Only if using reconfirmable
  end
end
