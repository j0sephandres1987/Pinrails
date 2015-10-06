class HomeController < ApplicationController
  before_action :confirm_logged_in
  def index
    @posts = User.find(params[:id]).posts.sorted_by_date_desc
    @user = User.find(session[:user_id])
  end
end
