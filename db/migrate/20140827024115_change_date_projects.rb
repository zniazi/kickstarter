class ChangeDateProjects < ActiveRecord::Migration
  def change
    change_column :projects, :end_date, :datetime
  end
end
