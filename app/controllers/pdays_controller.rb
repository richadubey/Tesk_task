class PdaysController < ApplicationController
	def new
		 @pday = Pday.new
		 @pday.ptasks.build
	end

	def index
		if params[:days].present?
			@pday = Pday.where(name: params[:days])
		else
			@pday = Pday.all
		end 
	end

	def create
		@pdays = Pday.new(pday_params)
		if @pdays.save
			redirect_to @pdays
		else
			render 'new'
		end
	end
	
	def show
		 @pday = Pday.find(params[:id])
	end

	private

	def pday_params
		 params.require(:pday).permit(:days,ptasks_attributes: [:description])
		
	end
end
