# frozen_string_literal: true

class VideosController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    render status: :ok, json: Video.all.to_json
  end
end
