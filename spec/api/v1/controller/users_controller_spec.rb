# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Visitor accesses Users' do
  context '/GET /api/v1/users' do
    it 'accesses /GET /api/v1/users' do
      get '/api/v1/users'
      expect(response.status).to eq(200)
      # expect(response.body).to eq('{user}')
    end
  end

  # it 'accesses /POST /api/v1/users' do
  #   post '/api/v1/users', params: {
  #     user: { name: 'ana', email: 'ana@example.com' }
  #   }
  #   expect(response.status).to eq(201)
  #   json = JSON.parse(response.body).deep_symbolize_keys
  #   expect(json[:name]).to eq('ana')
  #   expect(json[:email]).to eq('ana@example.com')
  # end

  # it 'accesses /DELETE /api/v1/users/{id}' do
  #   user = User.create(name: 'ana', email: 'ana@example.com')
  #   delete "/api/v1/users/#{user.id}"
  #   expect(response.status).to eq(200)
  # end

  # it 'accesses /PUT /api/v1/users/{id}' do
  #   user = User.create(name: 'ana', email: 'ana@example.com')
  #   put "/api/v1/users/#{user.id}"
  #   expect(response.status).to eq(200)
  # end
end
