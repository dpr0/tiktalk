# frozen_string_literal: true

class ChatsController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    render status: :ok, json: Chat.all.to_json
  end
end
