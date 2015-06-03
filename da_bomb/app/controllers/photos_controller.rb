class PhotosController < ApplicationController
before_action :set_photo, only: [:show, :edit, :update, :destroy]


	# List all of the beers
	def index
		@photos = Photo.all
		
	end

	# Show data for one beer
	def show

	end

	# Displays form for creating a new beer
	def new
		@photo = Photo.new
		
	end

	# Processes data form the new beer form and creates a beer
	def create
		@photo = Photo.new(photo_params)

		respond_to do |format|
	      if @photo.save
	        format.html { redirect_to photos_url, notice: 'A new photo was successfully added.' }
	        format.json { render :show, status: :created, location: @photo }
	      else
	        format.html { render :new }
	        format.json { render json: @photo.errors, status: :unprocessable_entity }
	      end
	    end
	end
		
	end

	# Displays form for editing an existing beer
	def edit 

	end

	# Processes data form the edit beer form and updates a beer
	def update
		respond_to do |format|
	      if @photo.update(photo_params)
	        format.html { redirect_to photos_url, notice: 'That photo has successfully been updated.' }
	        format.json { render :show, status: :ok, location: @photo }
	      else
	        format.html { render :edit }
	        format.json { render json: @photo.errors, status: :unprocessable_entity }
	      end
    	end
		
	end

	# Deletes the beer
	def destroy
		@photo.destroy
		    respond_to do |format|
		      format.html { redirect_to photos_url, notice: 'That photo was successfully destroyed.' }
		      format.json { head :no_content }
		   end
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