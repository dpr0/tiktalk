# frozen_string_literal: true

class InterestsController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    render status: :ok, json: Interest.all.to_json
  end
end
