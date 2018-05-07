class ProfilesController < ApplicationController
    before_action :authenticate_user!

    def index

    end

    def new
        @profile = Profile.new
    end

    def create

        @profile = Profile.new(game_params)
        @profile.user_id = current_user.id
    
        respond_to do |format|
          if @profile.save
            format.html { redirect_to @profile, notice: 'Profile.' }
            format.json { render :show, status: :created, location: @profile}
          else
            
            format.html { render :show   }
            format.json { render json: @profile.errors, status: :unprocessable_entity }
          end
        end
      end


      def show
        @profile = Profile.find(params[:id])
      end

    def destroy

    end

    def update

    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @profile = Profile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def game_params
      params.require(:profile).permit(:name, :age, :location, :bio, :profilepicture, :favouritegames)
    end

end
