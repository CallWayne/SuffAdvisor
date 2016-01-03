class CommentsController < ApplicationController
  def create
    @pub = Pub.find(params[:pub_id])
    @comment = @pub.comments.create(comment_params)
    redirect_to pub_path(@pub)
  end

  def create
    @event = Event.find(params[:event_id])
    @comment = @event.comments.create(comment_params)
    redirect_to event_path(@event)
  end

  def create
    @discothek = Discothek.find(params[:discothek_id])
    @comment = @discothek.comments.create(comment_params)
    redirect_to discothek_path(@discothek)
  end

  def destroy
    @pub = Pub.find(params[:pub_id])
    @comment = @pub.comments.find(params[:id])
    @comment.destroy
    redirect_to pub_path(@pub)
  end

  def destroy
    @event = Event.find(params[:event_id])
    @comment = @event.comments.find(params[:id])
    @comment.destroy
    redirect_to event_path(@event)
  end

  def destroy
    @discothek = Discothek.find(params[:discothek_id])
    @comment = @discothek.comments.find(params[:id])
    @comment.destroy
    redirect_to discothek_path(@discothek)
  end

  private
  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end
