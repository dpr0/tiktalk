# frozen_string_literal: true

class RolesController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    render status: :ok, json: Role.all.to_json
  end
end
