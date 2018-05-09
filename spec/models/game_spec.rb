require 'rails_helper'

RSpec.describe 'Game', type: :model do

        it 'ensures title is in' do
            game = Game.new
            expect(game).to_not be_valid
        end 


        it 'ensures valid' do
            user = User.create(email: "sd@sds", password:"sdssds")
            game = Game.new(title:"sds", price:9.90, description:"sds", user_id: user.id)
            expect(game).to be_valid
        end
end