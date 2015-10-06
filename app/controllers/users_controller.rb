class UsersController < ApplicationController
  before_action :confirm_logged_in
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to(:controller => "home", :action => "index", :id => @user.id)
    else
      render("edit")
    end
  end
  
  private

  def user_params
    params.require(:user).permit(:full_name, :profile_description, :avatar)
  end
end
