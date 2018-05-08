class Game < ApplicationRecord
    mount_uploader :gamepicture, GamePictureUploader
    belongs_to :user
    searchkick word_middle [:title, :genre]

    def search_data{
    title: title,
    genre: genre
    }
   end  
end
