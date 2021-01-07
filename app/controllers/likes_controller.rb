# frozen_string_literal: true

class LikesController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    render status: :ok, json: Like.all.to_json
  end
end
