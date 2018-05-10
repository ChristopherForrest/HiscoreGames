class ProfilesController < ApplicationController

    before_action :authenticate_user!, only: [:new, :edit, :create]
    before_action :set_search
    before_action :checkprofile, only: [:new]




    def index
      
    end

    def new
        @profile = Profile.new

    end

    def create
     
        @profile = Profile.new(profile_params)
        @profile.user_id = current_user.id

    
        respond_to do |format|
          if @profile.save
            format.html { redirect_to @profile, notice: 'Profile.' }
            format.json { render :show, status: :created, location: @profile}
          else
            
            format.html { render :new }
            format.json { render json: @profile.errors, status: :unprocessable_entity }
          end
        end
      end


      def show
       
      @profile = Profile.where(:user_id => current_user)

   
      end

    def destroy

    end

    def update

    end



    private
    # Use callbacks to share common setup or constraints between actions.
 
    def set_profile
    @profile = Profile.find(params[:id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:profilepicture, :name, :age, :location, :favouritegame, :bio)
    end


    def checkprofile
      
      puts "********************************sds**************************"

    end



end
