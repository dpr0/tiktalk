# frozen_string_literal: true

class MessagesController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    render status: :ok, json: Message.all.to_json
  end
end
