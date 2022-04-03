require 'rails_helper'

RSpec.describe 'sessions', type: :request do
  include ApiAsJsonHelper
  describe 'POST /api/v1/user/sessions' do
    # let(:session_params)
    before do
      post api_v1_user_sessions_path, params: { user:
        {
          'email' => 'ana@teste.com',
          'password' => '123456'
        }
      }
    end

    it 'Sessao iniciada status created 201' do
      expec(response).to have_http_status(201)
    end

    it 'Sessao iniciada retorna token' do
      expec(response.body).to eq(
        {
          'email' => 'ana@teste.com',
          'password' => '123456'
        }
      )
    end
  end
end