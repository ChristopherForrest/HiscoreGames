class Profile < ApplicationRecord
    mount_uploader :profile_picture_uploader, ProfilePictureUploader
    validates :user_id, uniqueness:{
    message: "profile exists"}
  
    belongs_to :user
end
