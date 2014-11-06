class CommentsController < ApplicationController
  def index
    render json: Comment.all.where(promo_id: params[:promo_id])
  end

  def create
    @comment = Comment.new(promo_id: params[:promo_id], author: params[:author], content: params[:content])
    if @comment.save!
      render json: @comment
    else
      render json: {error: "You did not post the good params buddy"}
    end
  end

end
