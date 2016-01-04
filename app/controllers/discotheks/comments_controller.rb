class Discotheks::CommentsController < CommentsController
  before_action :set_commentable

  private
  def set_commentable
    @commentable = Discothek.find(params[:discothek_id])
  end
end