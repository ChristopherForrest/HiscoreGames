class Profile < ApplicationRecord
    mount_uploader :profilepicture, ImageUploader
    validates :user_id, uniqueness: true
    belongs_to :user
end
