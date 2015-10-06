class AccessController < ApplicationController
  def access
    @user = User.new
  end
  
  def create_user
    @user = User.create(signup_params)
    session[:user_id] = @user.id
    session[:username] = @user.username
    redirect_to(:controller => "posts", :action => "index")
  end

  def attempt_login
    if login_params[:username].present? && login_params[:password].present?
      found_user = User.find_by_username(login_params[:username])
    end
    if found_user
      authorized_user = found_user.authenticate(login_params[:password])
    end
    if authorized_user
      session[:user_id] = authorized_user.id
      session[:username] = authorized_user.username
      redirect_to(:controller => "posts", :action => "index")
    else
      session[:user_id] = nil
      session[:username] = nil
      flash[:error] = "Username and/or password incorrect."
      render (:access)
    end
  end

  def logout
    session[:user_id] = nil
    session[:username] = nil
    redirect_to(:action => "access")
  end

  private

  def login_params
    params.require(:user).permit(:username, :password)
  end
  
  def signup_params
    params.require(:user).permit(:username, :email, :password)
  end
end
