class AddBioToUsernames < ActiveRecord::Migration[6.1]
  def change
    add_column :usernames, :bio, :string
  end
end
