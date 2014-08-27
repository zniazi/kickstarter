class Pledge < ActiveRecord::Base
  validates :user_id, :reward_id, presence: true
  belongs_to(
    :reward,
    class_name: "Reward",
    foreign_key: :reward_id,
    primary_key: :id
  )

  belongs_to(
    :backer,
    class_name: "User",
    foreign_key: :user_id,
    primary_key: :id
  )
end
