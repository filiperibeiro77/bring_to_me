class SessionsController < ApplicationController
  before_action :block_access, except: [:destroy]

  def new
  end

  def create
  	@user = Contact.find_by(user_email: params[:session][:user_email].downcase).user
  	if @user && @user.authenticate(params[:session][:password])
  		sign_in(@user)
  		redirect_to root_path
  	else
  		render 'new'
  	end
  end

  def destroy
  	sign_out
    redirect_to root_url
  end
end
