class AddNameToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :name, :string
    add_index :locations, :name, unique: true
  end
end
