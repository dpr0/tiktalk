# frozen_string_literal: true

class CitiesController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    render status: :ok, json: City.all.to_json
  end
end
