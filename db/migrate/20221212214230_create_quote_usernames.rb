class CreateQuoteUsernames < ActiveRecord::Migration[6.1]
  def change
    create_table :quote_usernames do |t|
      t.integer :quote_id
      t.integer :username_id

      t.timestamps
    end
  end
end
