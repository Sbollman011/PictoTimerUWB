class UserController < ApplicationController

	def index
		@users = User.all
		render json: @users
	end

	def show 
		@user = User.find_by(id: params[:id])
	end

	def new
		@user = User.new
	end

	def create
		@user = User.create(follow_params)
	end

	def edit
		@user = User.find_by(id: params[:id])
	end

	def update
		@user = User.find_by(id: params[:id])
		@user.update
	end

	def destroy
		@user = User.find(id: params[:id])
	end

	private
		def follow_params
			params.require(:user).permit(:id, :name, :title, :years, :image, :phone_number)
		end
	end





end
