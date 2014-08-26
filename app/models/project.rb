class Project < ActiveRecord::Base
  has_many(
    :rewards,
    class_name: "Reward",
    foreign_key: :project_id,
    primary_key: :id
  )

  belongs_to(
    :creator,
    class_name: "User",
    foreign_key: :user_id,
    primary_key: :id
  )

  validates :category_id, :goal, :location_id, :title, :blurb, :end_date,
    :description, :challenges, presence: true
  validates :goal, numericality: { greater_than: 0, less_than_or_equal_to: 100_000_000 }
  validates_presence_of: :rewards
  validate :user_name, :user_biography

  private
  def user_name
    if (current_user.name.nil?)
      errors.base << "Creator name is required."
    end
    elsif (current_user.name.length < 1)
      errors.base << "Creator name is too short (minimum is 1 characters)"
    end
  end

  def user_biography
    if (current_user.biography.nil?)
      errors.base << "Biography is required."
    end
  end
end
