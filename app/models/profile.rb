class Profile < ApplicationRecord
    mount_uploader :profilepicture, ImageUploader
    validates :user_id, uniqueness:{
    message: "profile exists"}
  
    belongs_to :user
end
