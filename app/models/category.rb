class Category < ActiveRecord::Base
  belongs_to(
    :category,
    class_name: "Category",
    foreign_key: :category_id,
    primary_key: :id
  )

  has_many(
    :subcategories,
    class_name: "Category",
    foreign_key: :category_id,
    primary_key: :id
  )

  def self.primary_categories
    Category.connection.select_all(<<-SQL
      SELECT
        categories.*
      FROM
        categories
      WHERE
        categories.category_id IS NULL
    SQL
    ).map { |obj| Category.new(obj) }
  end
end
