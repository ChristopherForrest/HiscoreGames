require 'rails_helper'

RSpec.describe 'Game', type: :model do
        
        # no details
        it 'ensures invalid postings dont save' do
            game = Game.new
            expect(game).to_not be_valid
        end 

        # correct details
        it 'ensures validations are correct' do
            user = User.create(email: "sd@sds", password:"sdssds")
            game = Game.new(title:"sds", price:9.90, description:"sds", user_id: user.id)
            expect(game).to be_valid
        end

        # duplicated users
        it 'ensures user is unique' do
            user = User.create(email: "sd@sd", password:"sdssds")
            user = User.create(email: "sd@sd", password:"sdssds")
            expect(user).to_not be_valid
        end
        

end