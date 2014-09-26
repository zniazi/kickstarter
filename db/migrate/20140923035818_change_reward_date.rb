class ChangeRewardDate < ActiveRecord::Migration
  def change
    add_column :rewards, :delivery_month, :integer
    add_column :rewards, :delivery_year, :integer
  end
end
