class SettingsController < ApplicationController
	before_filter :authenticate_admin

	def index
		@setting = Setting.first || Setting.new

		render layout: "dashboard"
	end

	def create
		setting = Setting.new(setting_params)

		if setting.save
			redirect_to settings_path, notice: "Settings have been updated" 
		else
			redirect_to settings_path, notice: "Settings haven't been updated" 
		end
	end

	def update
		setting = Setting.find(params[:id])

		if setting.update(setting_params)
			redirect_to settings_path, notice: "Settings have been updated" 
		else
			render :index, layout: "dashboard"
		end
	end

	private

	def setting_params
 		params.require(:setting).permit(:facebook_title, :facebook_image, :facebook_message, :twitter_message, :email_message, :email_subject, :cover_image, :additional_image, :linkedin_message, :linkedin_title, :pinterest_image, :pinterest_description, :google_plus_image, :twitter_image)
  	end 

end
