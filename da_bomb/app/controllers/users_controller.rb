class UsersController < ApplicationController
before_action :set_user, only: [:show, :edit, :update, :destroy]


	# List all of the beers
	def index
		
	end

	# Show data for one beer
	def show

	end

	# Displays form for creating a new beer
	def new
		
	end

	# Processes data form the new beer form and creates a beer
	def create
		
	end

	# Displays form for editing an existing beer
	def edit 

	end

	# Processes data form the edit beer form and updates a beer
	def update
		
	end

	# Deletes the beer
	def destroy
		
	end

	private
  	def set_user
      @user = User.find(params[:id])
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:user_name, :email, :password)
    end
end