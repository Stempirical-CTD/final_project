class CommentsController < ApplicationController
  before_filter :authenticate_user!

  def create
    @comment = @commentable.comments.new(comment_params)
    @comment.user_id = current_user.id
    @comment.save
    respond_to do |format|
      format.html do
        flash[:notice] = 'Your comment was successfully posted.'
        redirect_to @commentable
      end
      format.js
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :id)
  end
end
