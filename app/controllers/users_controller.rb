class UsersController < ApplicationController
	before_action :retrive_referrer, only: :new
	before_action :check_session, only: :new
	before_action :check_email_address, only: :create
	before_action :fetch_user, only: [:show, :destroy]
	before_action :authenticate_admin, only: [:index, :destroy]


	def index
		@users = User.all.order("created_at desc").paginate(:page => params[:page], :per_page => 100)

		respond_to do |format|
	    	format.html {render layout: "dashboard"}
	    	format.csv { send_data User.all.as_csv }
    	end 
	end

	def destroy
		if @user.destroy
			redirect_to users_path, notice: "User has been successfully deleted."
		else
			redirect_to users_path, alert: "User hasn't been deleted."
		end
	end


	def new
		@user = User.new
		respond_to do |format|
            format.html
        end
	end

	def show
		respond_to do |format|
            format.html
        end
	end



	def create

		@user = User.new(user_params)
		@user.referrer_id = session[:referrer_id] if session[:referrer_id].present?
		@user.ip_address = request.ip

		if @user.save
			cookies[:user_id] = @user.id
			respond_to do |format|
	            format.html {redirect_to user_path(@user.referral_code), notice: "Thank you for signing up."}
	        end
	    else
			respond_to do |format|
	            format.html {redirect_to root_path, alert: "Subscribing multiple emails is not allowed."}
	        end
	    end
	end


	private 


	def check_session
		if cookies[:user_id] && User.where(id: cookies[:user_id]).any? && !current_admin
			redirect_to user_path(User.find(cookies[:user_id]).referral_code)
		end
	end

	def check_email_address
		if params[:user] && User.where(email: params[:user][:email]).any?
			redirect_to user_path(User.find_by(email: params[:user][:email]).referral_code)
		end
	end

	def retrive_referrer
		if params[:ref] && User.where(referral_code: params[:ref]).any?
			session[:referrer_id] = User.find_by(referral_code: params[:ref]).id
		end
	end

	def fetch_user
		@user = User.find_by(referral_code: params[:id])
	end

	def user_params
    	params.require(:user).permit(:email)
  	end 


end
