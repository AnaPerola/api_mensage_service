module Api
  module V1
    class SessionsController < ApplicationController
      skip_before_action :authenticate! 
      def create 
        user = User.find_by(email: user_params[:email])
        raise 'user not found' if user.nil?
        raise 'user invalid password' unless user.authenticate(user_params[:password])

        token = JsonWebToken.encode( user_id: user.id )

        render json: { token: token }
      rescue StandardError => e
        render json: { errors: e.message }
      end

      def user_params
        params.require(:user).permit(:email, :password)
      end


    end
  end
end 