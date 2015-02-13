class SessionsController < ApplicationController
  def new
  end

  def create
    email = params[:email]
    password = params[:password]

    # find by email
    user = User.find_by email: email
    # verify the password
    if user.try(:authenticate, password)
      # sign them in
      session[:user_id] = user.id
      redirect_to root_path
    else
      # or render the form
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
