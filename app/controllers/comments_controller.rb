class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @comment = @commentable.comments.new(comment_params)
    @comment.username = current_user.email
    @comment.save
    redirect_to @commentable, notice: "Your comment was sucessfully posted!"
  end


  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end
