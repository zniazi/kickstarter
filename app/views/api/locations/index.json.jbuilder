json.array! @locations.each do |location|
  json.name location.name
  json.id location.id
end