class RemovePictureFromCocktails < ActiveRecord::Migration[5.0]
  def change
    remove_column :cocktails, :picture, :text
  end
end
