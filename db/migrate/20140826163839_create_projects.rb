class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :user_id
      t.string :title
      t.integer :category_id
      t.integer :subcategory_id
      t.text :blurb
      t.integer :location_id
      t.date :end_date
      t.float :goal
      t.text :description
      t.text :challenges

      t.timestamps
    end
    add_index :projects, :user_id
    add_index :projects, :title
    add_index :projects, :category_id
    add_index :projects, :subcategory_id
    add_index :projects, :location_id
  end
end
