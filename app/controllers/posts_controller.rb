class PostsController < ApplicationController
  before_action :confirm_logged_in, :except => [:index]
  def index
    @posts = Post.sorted_by_date_desc
  end
  
  def create_post
    #respond_to do |format|
      post = User.find(session[:user_id]).posts.new(post_params)
      if post.save
        redirect_to(:action => "index")
        #format.js
      else
        format.html { redirect_to(:action => "index") }
        format.js
      end
    #end
  end
  
  def show_post
    @comment = Comment.new
    @post = Post.find(params[:id])
    @comments = @post.comments.sorted_by_date_desc
  end
  
  private 
  
  def post_params
    params.require(:post).permit(:title, :image)
  end
  
end
