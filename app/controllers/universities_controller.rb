# frozen_string_literal: true

class UniversitiesController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    render status: :ok, json: University.all.to_json
  end
end
