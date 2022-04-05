# frozen_string_literal: true

module Api
  module V1
    class UsersController < ApplicationController
      before_action :set_user, only: %i[show destroy update]
      skip_before_action :authenticate!, only: :create
      skip_authorize_resource only: :create

      def index
        @users = User.all
        authorize! :read, @users

        render json: { users: @users.as_json(except: %i[created_at updated_at password_digest]) }
      end

      def show
        authorize! :read, @user
        render json: { user: @user.as_json(except: %i[created_at updated_at password_digest]) }
      end

      def update
        authorize! :update, @user
        if @user.update(user_update_params)
          render json: { user: @user.as_json(except: %i[created_at updated_at password_digest]) }
        else
          render json: {
            user: @user.as_json(except: %i[created_at updated_at password_digest]),
            errors: @user.errors
          }, status: :unprocessable_entity
        end
      end

      def create
        @user = User.new(user_params)
        if @user.save
          render json: {
            user: @user.as_json(except: %i[created_at updated_at password_digest])
          }, status: :created
        else
          render json: {
            user: @user.as_json(except: %i[created_at updated_at password_digest]),
            errors: @user.errors
          }, status: :unprocessable_entity
        end
      end

      def destroy
        authorize! :destroy, @user
        if @user.destroy
          render json: {
            user: @user.as_json(except: %i[created_at updated_at password_digest])
          }, status: :no_content
        else
          render json: {
            user: @user.as_json(except: %i[created_at updated_at password_digest]),
            errors: @user.errors
          }, status: :unprocessable_entity
        end
      end

      private

      def user_params
        params.require(:user).permit(:name, :email, :password)
      end

      def user_update_params
        params.require(:user).permit(:name, :email, :password, :role, :status)
      end

      def set_user
        @user = User.find(params[:id])
      end
    end
  end
end
