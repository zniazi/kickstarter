class AddLimitToRewards < ActiveRecord::Migration
  def change
    add_column :rewards, :limit, :integer
  end
end
