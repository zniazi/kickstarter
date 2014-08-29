json.(@project, :id, :category_id, :subcategory_id, :blurb, :end_date, :goal,
  :description, :challenges, :created_at, :updated_at, :video_file_name,
  :video_content_type, :video_file_size, :video_updated_at, :photo_file_name,
  :photo_content_type, :photo_file_size, :photo_updated_at
  )

json.creator do
  json.partial! "api/user", user: @project.creator
end

json.location do

end

