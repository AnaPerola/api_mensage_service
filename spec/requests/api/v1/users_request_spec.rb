# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'users', type: :request do
  include ApiAsJsonHelper

  describe 'GET /api/v1/users/' do
    let!(:users) { create_list(:user, 2) }

    context 'With authentication' do
      before do
        get api_v1_users_path #, headers: authentication_headers
      end

      it 'Should return status ok' do
        expect(response).to have_http_status(:ok)
      end

      it 'Should return the users' do
        expect(json_parse.size).to eq(2)
        # expect(json_parse).to eq([users])
      end
    end

    context 'No authentication' do
      # let(:user) { create_list(:user) }

      # before do
      #   get api_v1_user_path(user.id)
      # end

      # it 'Should return status 401' do
      #   expect(response).to have_http_status(401)
      # end

      # it 'Should return message of unauthorized' do
      #   expect(json_parse).to eq({ 'errors' => ['You need to sign in or sign up before continuing.'] })
      # end
    end
  end

  describe 'POST /api/v1/users/:id' do
    context 'Create users status :created' do
      before do
        post '/api/v1/users', params: { user:
          {
            'name' => 'Ana',
            'email' => 'ana@teste.com',
            'password' => '123456'
          }
        }
      end
      it 'Should return status ok' do
        expect(response).to have_http_status(:created)
      end

      it 'Should return the user created' do
        expect(response.body).to eq(
          {
            'name' => 'Ana',
            'email' => 'ana@teste.com',
            'password' => '123456'
          }
        )
      end
    end

    it 'create users status 401' do
    end
  end

  describe 'DELETE /api/v1/users/:id' do
    it 'delete user status 200' do
    end
    it 'delete user status 401' do
    end
  end

  describe 'PUT /api/v1/users/:id' do
    it 'update user status 200' do
    end
    it 'update user status 401' do
    end
  end

end
