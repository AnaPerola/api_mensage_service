# frozen_string_literal: true

class HomeController < ApplicationController
  def show
    render json: {
      rails_version: Rails.version,
      ruby_version: RUBY_VERSION,
      rails_environment: Rails.env,
      developer: 'Ana Pérola'
    }, status: 200
  end
end
