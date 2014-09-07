class AddFontColorToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :font_color, :string
  end
end
