class RolesController < ApplicationController

	def new
		 @role = Role.new
	end

	def index
		if params[:name].present?
			@roles = Role.where(name: params[:name])
		else
			@roles = Role.all
		end 
	end
  
  def create
  	@roles = Role.new(role_params)
  	if @roles.save
  		redirect_to @roles
    else
    	render 'new'
    end
	end
	
	def show
		 @role= Role.find(params[:id])
	end

	private
	def role_params
		 params.require(:role).permit(:name, :description)
		
	end
end
