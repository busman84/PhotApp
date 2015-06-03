class UsersController < ApplicationController
before_action :set_user, only: [:show, :edit, :update, :destroy]


	# List all of the users
	def index
    @users = User.all
  end

	# Show data for a user
	def show

	end

	
	# GET /users/new
  def new
    @user = User.new
  end

	# Processes data form the user form and create a user
	def create
    p params
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'You are now a member of PhotApp!' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

	# GET /users/1/edit
  def edit
  
  end

	# Processes data form the edit user form and updates the user
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'You have been updated!' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end


	
	# DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'You Gone!' }
      format.json { head :no_content }
    end
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