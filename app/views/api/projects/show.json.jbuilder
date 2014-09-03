json.(@project, :id, :title, :category_id, :subcategory_id, :blurb, :goal,
  :description, :challenges, :created_at, :updated_at
)

json.end_date @project.end_date.strftime("%d")
json.video_url @project.video.url
json.photo_url @project.photo.url
json.money_raised @project.money_raised
if @project.end_date
  json.days_left (@project.end_date.to_date - DateTime.now.to_date).to_i
end

json.creator do
  json.partial! "api/user", user: @project.creator
end

json.location @project.location
json.category @project.category
json.subcategory @project.subcategory
json.backers @project.backers.each do |backer|
  json.partial! "api/user", user: backer
end

json.rewards @project.rewards.each do |reward|
  json.backers reward.backers
  json.pledge reward.pledge
  json.description reward.description
  json.delivery_date reward.delivery_date.strftime("%B %Y")
end