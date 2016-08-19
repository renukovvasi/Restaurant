class UsersController < ApplicationController
	def home
		
	end
	def index
		@users = User.all
	end

	def search
		@query = User.search do 
			fulltext params[:search]
		end
		@results = @query.results
		respond_to do |format|
	      format.html # index.html.erb
	      format.json { render json: @results }
	    end	
	end

	def new
		@user = User.new
	end
	def create
		@user = User.create(user_params)
		redirect_to @user
	end
	def edit
	end
	def show
		@user = User.find(params[:id])
	end
	def update
	end
	def destroy
	end

	def contacts
		@contacts = User.select(:email).select(:mobile_number).select(:name)
	end
	private
	def user_params
		params[:user].permit(:name, :email, :mobile_number,:password, :password_confirmation)
	end
end
