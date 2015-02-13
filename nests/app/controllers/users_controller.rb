class UsersController < ApplicationController

  before_action :authenticate_user!

  def show
  end

  def authenticate_user!
    if signed_in?
    else
      redirect_to sign_in_path
    end
  end

  def signed_in?
    session[:user_id].to_i > 0
  end

end
