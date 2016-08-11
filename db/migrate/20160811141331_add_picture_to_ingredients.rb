class AddPictureToIngredients < ActiveRecord::Migration[5.0]
  def change
    add_column :ingredients, :picture, :text
  end
end
