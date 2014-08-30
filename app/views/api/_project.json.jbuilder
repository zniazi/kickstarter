json.(project, :id, :category_id, :subcategory_id, :blurb, :end_date, :goal,
  :description, :challenges, :created_at, :updated_at
  )

json.video_url project.video.url
json.photo_url project.photo.url
json.money_raised project.money_raised
if project.end_date
  json.days_left (project.end_date.to_date - DateTime.now.to_date).to_i
end

json.location project.location
json.category project.category
json.subcategory project.subcategory
json.backers project.backers.each do |backer|
  json.partial! "api/user", user: backer
end