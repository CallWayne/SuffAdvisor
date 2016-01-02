class CommentsController < ApplicationController
  def create
    @pub = Pub.find(params[:pub_id])
    @comment = @pub.comments.create(comment_params)
    redirect_to pub_path(@pub)
  end

  private
  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end
