class CreateQuotes < ActiveRecord::Migration[6.1]
  def change
    create_table :quotes do |t|
      t.string :title
      t.string :description 
      t.integer :username_id
      
      t.timestamps
    end 
  end
end
