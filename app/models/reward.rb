class Reward < ActiveRecord::Base
  validates :pledge, numericality: { less_than_or_equal_to: 10_000, greater_than_or_equal_to: 1 }
  validates :description, :delivery_date, :shipping_type, presence: true

  has_many(
    :backers,
    class_name: "User",
    foreign_key: :reward_id,
    primary_key: :id
  )
end
