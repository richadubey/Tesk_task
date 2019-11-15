class CalendarsController < ApplicationController
	def new
		 @calendar = Calendar.new
		 @calendar.cdays.build
	end

	def index
		if params[:name].present?
			@calendars = Calendar.where(name: params[:name])
		else
			@calendars = Calendar.all
		end 
	end

	def create
		@calendars = Calendar.new(calendar_params)
		if @calendars.save
			redirect_to @calendars
		else
			render 'new'
		end
	end
	
	def show
		 @calendar = Calendar.find(params[:id])
		 @previous_calendar = Calendar.where('id < ?', params[:id]).last
         @next_calendar  = Calendar.where('id > ?', params[:id]).first
	end

	private

	def calendar_params
		 params.require(:calendar).permit(:name, cdays_attributes:[:days ])
		
	end
end
