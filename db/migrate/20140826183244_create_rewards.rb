class CreateRewards < ActiveRecord::Migration
  def change
    create_table :rewards do |t|
      t.float :pledge
      t.text :description
      t.date :delivery_date
      t.integer :shipping_type

      t.timestamps
    end
  end
end
