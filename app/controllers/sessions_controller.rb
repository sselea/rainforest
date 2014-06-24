class SessionsController < ApplicationController
  def new
  end

  def create
  user= User.find_by_email (params[:email])
  if user && user.autheticate(params [:password])
  	sessions[:user_id]= user.id
  	redirect_to products_urlm, :notice => "Logged In!"
  else
  	flash.now[:alert] = "Invalid email or password"
  	render "new"
  end
  end


  def destroy
  	session[:user_id]= nil
  	redirect_to products_url, :notce => "Logged Out"
  end
end
