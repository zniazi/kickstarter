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
end
