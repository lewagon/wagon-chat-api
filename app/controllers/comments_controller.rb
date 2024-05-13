class CommentsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: :create
  before_action :parse_json, only: :create

  def index
    comments = Comment.where(channel: params[:channel]).order('created_at ASC')
    next_reset_at = DateTime.now
    next_reset_at = next_reset_at.change(min: next_reset_at.min / 10 * 10, seconds: 0) # Reset every 10 minutes
    next_reset_at += 10.minutes
    render json: {
      channel: params[:channel],
      messages: comments,
      next_reset_at: next_reset_at.utc
    }
  end

  def create
    puts params
    @comment = Comment.new(channel: params[:channel], author: params[:author], content: params[:content])
    if @comment.save
      render json: @comment
    else
      render json: { error: @comment.errors }, status: 422
    end
  end

  def dashboard
    @comments = Comment.where(channel: params[:channel]).order('created_at ASC')
  end

  def home
    @channels = Comment.all.pluck(:channel).uniq.sort.reverse
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
