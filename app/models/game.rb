class Game < ApplicationRecord
    mount_uploader :gamepicture, GamePictureUploader
    belongs_to :user
    validates :title, :price, :description, presence: true
end
