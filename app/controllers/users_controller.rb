# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :authorized, only: [:auto_login]

  # REGISTER
  def create
    user = User.new(user_params)

    if user.save
      token = encode_token({ user_id: user.id })
      render_success({ user:, token: })
    else
      render_failure(user.errors)
    end
  end

  # LOGGING IN
  def login
    user = User.find_by(email: user_params[:email])

    if user&.authenticate(user_params[:password])
      token = encode_token({ user_id: user.id })
      render_success({ user:, token: })
    else
      render_failure
    end
  end

  def auto_login
    render json: @user
  end

  private

  def user_params
    params.permit(:email, :password)
  end
end
