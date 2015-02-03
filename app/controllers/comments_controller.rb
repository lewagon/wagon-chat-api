class CommentsController < ApplicationController
  before_action :parse_json, only: :create

  def index
    render json: Comment.where(promo_id: params[:promo_id]).order('created_at ASC')
  end

  def create
    puts params
    @comment = Comment.new(promo_id: params[:promo_id], author: params[:author], content: params[:content])
    if @comment.save
      render json: @comment
    else
      render json: { error: @comment.errors }
    end
  end

  def dashboard
    @comments = Comment.where(promo_id: params[:promo_id]).order('created_at ASC')
  end

  def home
    @promo_ids = Comment.uniq.pluck(:promo_id).sort.reverse
  end

  private

  def parse_json
    # Allow students to omit `Content-Type: application/json` in their requests
    begin
      params.merge! ActiveSupport::JSON.decode(request.body.string) if request.body.string.present?
    rescue JSON::ParserError
      # Silently fail if could not parse JSON
    end
  end

end
