class User < ApplicationRecord
  before_save :downcase_email
  before_create :generate_token
  has_secure_password
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  # Downcases mail characters
  def downcase_email
    email.downcase!
  end

  def generate_token
    self.remember_token = Digest::SHA1.hexdigest(SecureRandom.urlsafe_base64)
  end
end
