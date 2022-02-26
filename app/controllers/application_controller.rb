# frozen_string_literal: true

class ApplicationController < ActionController::API
  before_action :authorized

  def render_success(response)
    render json: response, status: :ok
  end

  def render_failure(response = {})
    render json: response, status: :forbidden
  end

  def encode_token(payload)
    JWT.encode(payload, ENV.fetch('JWT_SECRET_TOKEN', 'devSecret'))
  end

  def auth_header
    request.headers['Authorization']
  end

  def decoded_token
    return unless auth_header

    token = auth_header.split[1]

    begin
      JWT.decode(token, 'devSecret', true, algorithm: 'HS256')
    rescue JWT::DecodeError
      nil
    end
  end

  def logged_in_user
    return unless decoded_token

    user_id = decoded_token.dig(0, 'user_id')
    @user = User.find_by(id: user_id)
  end

  def logged_in?
    !!logged_in_user
  end

  def authorized
    render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
  end
end
