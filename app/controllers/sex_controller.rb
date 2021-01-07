# frozen_string_literal: true

class SexController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    render status: :ok, json: Sex.all.to_json
  end
end
