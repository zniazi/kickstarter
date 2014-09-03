json.array! @categories.each do |category|
  json.name category.name
  json.id category.id
  json.subcategories category.subcategories
end