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
  
  belongs_to(
    :category,
    class_name: "Category",
    foreign_key: :category_id,
    primary_key: :id
  )
  
  belongs_to(
    :subcategory,
    class_name: "Category",
    foreign_key: :subcategory_id,
    primary_key: :id
  )

  # validates :category_id, :goal, :location_id, :title, :blurb, :end_date,
  #   :description, :challenges, presence: true
  # validates :goal, numericality: { greater_than: 0, less_than_or_equal_to: 100_000_000 }
  # validates :title, length: { minimum: 1, maximum: 60 }
  # validates :blurb, length: { maximum: 135 }
  # validates_presence_of :rewards
  # validate :user_name, :user_biography

  private
  def user_name
    return false if self.creator.name.nil? || (self.creator.name.length < 1)
    
    true
  end

  def user_biography
    return false if self.creator.biography.nil?
    
    true
  end
  
  def can_be_funded
    title = self.title.length
    blurb = self.blurb.length
    return true if (title > 0 && title <= 60) && (blurb > 0 && blurb < 135) && 
             (![self.category_id, self.goal, self.location_id, self.title, self.blurb,
             self.end_date, self.description, self.challenges, self.rewards].include?(nil)) &&
             user_name && user_biography
             
    false  
  end
end
