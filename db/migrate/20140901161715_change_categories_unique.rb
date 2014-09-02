class ChangeCategoriesUnique < ActiveRecord::Migration
  def change
    remove_index :categories, :name
    add_index :categories, :name, unique: false
  end
end
