class AddStaffFavoriteToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :staff_favorite, :boolean, default: false
    add_column :projects, :project_of_the_day, :boolean, default: false
    add_index :projects, :staff_favorite
    add_index :projects, :project_of_the_day
  end
end
