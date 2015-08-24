class PrizesController < ApplicationController
	before_action :fetch_prize, except: [:index, :new, :create]
	before_action :authenticate_admin

	def index
		@prizes = Prize.all

		respond_to do |format|
	    	format.html {render layout: "dashboard"}
    	end 
	end

	def new
		@prize = Prize.new
		respond_to do |format|
            format.html {render layout: "dashboard"}
        end
    end
	
    def create
		@prize = Prize.new(prize_params)

		if @prize.save
			respond_to do |format|
	            format.html {redirect_to prizes_path, notice: "Prize has been successfully created."}
	        end
	    else
			respond_to do |format|
	            format.html {render :new}
	        end
	    end
	end

	def edit
		respond_to do |format|
            format.html {render layout: "dashboard"}
        end
	end

	def update
		if @prize.update(prize_params)
			respond_to do |format|
	            format.html {redirect_to prizes_path, notice: "Prize has been successfully updated."}
	        end
	    else
			respond_to do |format|
	            format.html {render :new}
	        end
	    end
	end

	def destroy
		if @prize.destroy
			redirect_to prizes_path, notice: "Prize has been successfully deleted."
		else
			redirect_to prizes_path, alert: "Prize hasn't been deleted."
		end
	end

	private

	def prize_params
		params.require(:prize).permit(:name, :number_of_referrals, :image)
	end

	def fetch_prize
		@prize = Prize.find(params[:id])
	end


end
