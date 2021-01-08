# frozen_string_literal: true

class UsersController < ApplicationController
  protect_from_forgery with: :null_session
  before_action :authenticate_user!

  def index
    render status: :ok, json: User.all.to_json
  end

  def show
    render status: :ok, json: current_user.all.to_json
  end

  private

  def current_user

  end

end
