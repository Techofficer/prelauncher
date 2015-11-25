class SharesController < ApplicationController

	before_action :fetch_user

	def create
		@share = @user.shares.new(share_params)
		if @share.save
			redirect_to @share.redirect_url(root_url)
		else
			redirect_to user_path(@user.referral_code), alert: "Something went wrong"
		end
	end


	private

	def share_params
		params.require(:share).permit(:social_network)
	end

	def fetch_user
		@user = User.find_by(referral_code: params[:user_id])
	end	
end
