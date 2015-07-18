class CommentsController < ApplicationController
  before_filter :authenticate_user!
  # before_action :set_comment, only: [:show, :edit, :create, :update, :destroy]

  def create
    @comment = @commentable.comments.new(comment_params)
    @comment.user_id = current_user.id
    @comment.save
    respond_to do |format|
      format.html { redirect_to @commentable, notice: "Your comment was successfully posted." }
      format.js
    end
  end
  #
  # def edit
  #
  # end
  #
  # def update
  #   if @comment.update(comment_params)
  #     redirect_to @commentable, notice: 'Comment was successfully updated.'
  #   else
  #     render :edit
  #   end
  # end
  #
  # def destroy
  #   @comment.destroy
  #   redirect_to @commentable, notice: 'Comment was successfully destroyed.'
  # end
  #
  private

    # def set_comment
    #   @comment = Comment.find(params[:id])
    # end

    def comment_params
      params.require(:comment).permit(:body, :id)
    end
end
