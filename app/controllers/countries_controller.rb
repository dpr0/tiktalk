# frozen_string_literal: true

class CountriesController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    render status: :ok, json: Country.all.to_json
  end
end
