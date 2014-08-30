json.(@user, :id, :email, :name, :biography)
json.projects @user.projects.each do |project|
  json.partial! "api/project", project: project
end
json.backed_projects @user.backed_projects.each do |project|
  json.partial! "api/project", project: project
end