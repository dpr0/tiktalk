# frozen_string_literal: true

class UsersController < ApplicationController
  protect_from_forgery with: :null_session
  before_action :authenticate_user!

  def index
    # render status: :ok, json: User.all.to_json
  end

  def show
    user = User.find_by(id: params[:id])
    if user
      render status: :ok, json: user.to_json
    else
      render status: :not_found, json: "user with id = #{params[:id]} not found"
    end
  end

  private

end
