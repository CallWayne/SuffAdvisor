class Pubs::CommentsController < CommentsController
  before_action :set_commentable

  private
  def set_commentable
    @commentable = Pub.find(params[:pub_id])
  end
end
