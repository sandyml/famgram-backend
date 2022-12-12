class CreateQuotePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :quote_people do |t|
      t.integer :quote_id
      t.integer :people_id

      t.timestamps
    end
  end
end
