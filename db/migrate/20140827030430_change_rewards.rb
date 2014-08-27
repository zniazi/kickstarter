class ChangeRewards < ActiveRecord::Migration
  def change
    add_column :rewards, :project_id, :integer
    add_index :rewards, :project_id
  end
end
