class Reward < ActiveRecord::Base
  validates :pledge, numericality: { less_than_or_equal_to: 10_000, greater_than_or_equal_to: 1 }
  validates :description, :delivery_date, :shipping_type, presence: true

  has_many(
    :pledges,
    class_name: "Pledge",
    foreign_key: :reward_id,
    primary_key: :id
  )

  has_many(
    :backers,
    through: :pledges,
    source: :backer
  )

  belongs_to(
    :project,
    class_name: "Project",
    foreign_key: :project_id,
    primary_key: :id
  )
end
