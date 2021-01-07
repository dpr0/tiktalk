# frozen_string_literal: true

class UsersController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    # render status: :ok, json: User.all.to_json
  end

  def show; end

  private

end
