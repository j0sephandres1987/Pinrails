class CommentsController < ApplicationController
  def create_comment
    post = Post.find(params[:post_id])
    @comment = Comment.create(comment_params)
    @comment.user_id = session[:user_id]
    
    post.comments << @comment
    @comments = post.comments.sorted_by_date_desc
    respond_to do |format|
      if @comment
        format.html { redirect_to(:action => "show_post", :id => post.id) }
        format.js
      else
        format.html { redirect_to(:action => "show_post", :id => post.id) }
        format.js
      end
    end
  end
  
  private 
  
  def comment_params
    params.require(:comment).permit(:comment)
  end
end
