class CreateAddFavorite < ActiveRecord::Migration[6.1]
  def change
    add_column :people, :favorite, :string
  end
end
