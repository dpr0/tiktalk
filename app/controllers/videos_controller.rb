# frozen_string_literal: true

class VideosController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    render status: :ok, json: Video.all.to_json
  end

  def generate_upload_url # example POST api/attachments/generate_upload_url
  # ensure_user_is_authorized_to_perform_this_action
    @signed_url = Attachment.generate_upload_url(params[:file_name])
    render json: { url: @signed_url }
  end

  def create # example POST api/attachments
    # ensure_user_is_authorized_to_perform_this_action
    @attachment = Attachment.new(safe_params)
    if @attachment.save
      render json: @attachment
    else
      render json: @attachment.errors, status: :unprocessable_entity
    end
  end

end
