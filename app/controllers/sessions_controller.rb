class SessionsController < ApplicationController

  def index
  
    redirect_to action: 'new'
  end

  def new

  end

  def create
   user = User.find_by_email(params[:email])
    # If the user exists AND the password entered is correct.
    if user && user.authenticate(params[:password])
      # session[:email] = user.email
      session[:user_id] = user.id
      redirect_to '/'
    else
      # flash[:notice] = "Email or password is invalid"
      render 'new'
    end
  end

  def destroy
    
    # session[:email] = nil
    session[:user_id] = nil
    redirect_to '/'
  end

end
