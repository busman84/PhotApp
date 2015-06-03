class PhotosController < ApplicationController
before_action :set_photo, only: [:show, :edit, :update, :destroy]


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
  	def set_photo
      @photo = Photo.find(params[:id])
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def photo_params
      params.require(:photo).permit(:photo)
    end
end