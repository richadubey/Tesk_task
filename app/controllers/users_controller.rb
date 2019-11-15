class UsersController < ApplicationController
  
  def index
    if params[:first_name].present? && params[:last_name].present? && params[:email].present? 
      @users = User.where(first_name: params[:first_name], last_name: params[:last_name], email: params[:email])
    elsif params[:first_name].present? || params[:last_name].present? || params[:email].present?
      @users = User.where(first_name: params[:first_name]).or(User.where(last_name: params[:last_name])).or(User.where(email: params[:email]))
    else
      @users = User.all
    end
  end

  def new
  	@user= User.new

  end
  
  def create
    puts params[:user['last_name']]
    generated_password = Devise.friendly_token.first(8)
  	@user = User.new(user_params)
    @role = Role.find(params[:user][:roles])
  	if @user.save
      @user.add_role @role.name
      @user.update(password: generated_password)
      @user.send_reset_password_instructions
  		respond_to do |format|
				format.js
			end
    else
    	render 'new'
    end

  end

  private
  def user_params
  	params.require(:user).permit(:first_name, :last_name,:email,:password,:date_of_birth,:mobile,:gender,:role)

  end
end
