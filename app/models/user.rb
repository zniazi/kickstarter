class User < ActiveRecord::Base
  attr_reader :password
  after_initialize :ensure_session_token

  has_many(
    :projects,
    class_name: "Project",
    foreign_key: :user_id
  )

  belongs_to(
    :location,
    class_name: "Location",
    foreign_key: :location_id,
    primary_key: :id
  )

  has_many(
    :pledges,
    class_name: "Pledge",
    foreign_key: :user_id,
    primary_key: :id
  )

  has_many(
    :rewards_pledged,
    through: :pledges,
    source: :reward
  )

  has_many(
    :backed_projects,
    -> { uniq },
    through: :rewards_pledged,
    source: :project,
  )

  has_attached_file :profile_picture, :styles => {
    :big => "600x600",
    :medium => "300x300",
    :small => "50x50#"
  }
  validates_attachment_content_type(
    :profile_picture,
    :content_type => /\Aimage\/.*\Z/
  )

  validates :email, :session_token, uniqueness: true
  validates :password, length: { minimum: 6, allow_nil: true }
  validates :email, :password_digest, :session_token, :name, presence: true

  def self.find_by_credentials(email, password)
    user = User.find_by_email(email)
    (user && user.is_password?(password)) ? user : nil
  end

  def self.find_or_create_by_fb_auth_hash(auth_hash)
    user = User.find_by(uid: auth_hash[:uid], provider: auth_hash[:provider])
    user.profile_picture = auth_hash[:info][:image].gsub("http", "https") if user
    return user if user
    user = User.create(uid: auth_hash[:uid], provider: auth_hash[:provider])
    user.email = auth_hash[:info][:email]
    user.name = auth_hash[:info][:name]
    user.profile_picture = (auth_hash[:info][:image]).gsub("http", "https")
    user.password_digest = SecureRandom.base64
    return user
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def reset_session_token!
    self.session_token = SecureRandom.base64
    self.save!
    self.session_token
  end

  private
  def ensure_session_token
    self.session_token ||= SecureRandom.base64
  end
end
