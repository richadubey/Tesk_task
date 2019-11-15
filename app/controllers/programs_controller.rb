class ProgramsController < ApplicationController
	def new
		 @program = Program.new
		 @program.pdays.build
	end

	def index
		if params[:name].present?
			@programs = Program.where(name: params[:name])
		else
			@programs = Program.all
		end 
	end

	def create
		@programs = Program.new(program_params)
		if @programs.save
			redirect_to @programs
		else
			render 'new'
		end
	end
	
	def show
		 @program = Program.find(params[:id])
	end

	private

	def program_params
		 params.require(:program).permit(:name,pdays_attributes: [:days ])
		
	end
end
