class UploadedFile < ActiveRecord::Base
  # has_secure_password

  validates :password_digest, presence: true
  validates :expiration, presence: true
  validates :content, presence: true
  validates :original_file_name, presence: true
end
