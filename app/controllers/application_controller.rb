# frozen_string_literal: true

class ApplicationController < ActionController::API
  before_action :authenticate!

  def authenticate!
    token = request.headers['Authorization']
    user_id = JsonWebToken.decode(token)[:user_id]
    @current_user = User.find_by_id(user_id)

    raise 'user not found' if @current_user.nil?
  
  rescue StandardError => e
    render json: { errors: e.message }
  end

  def current_user
    @current_user
  end

end
