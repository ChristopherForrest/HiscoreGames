class Game < ApplicationRecord
    mount_uploader :gamepicture, GamePictureUploader
    belongs_to :user
end
