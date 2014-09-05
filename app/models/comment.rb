class Comment < ActiveRecord::Base
  belongs_to :project, polymorphic: true
end
