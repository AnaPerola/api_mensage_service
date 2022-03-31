# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Visitor accesses home', type: :request do
  describe 'GET /show' do
    it 'returns http success' do
      get '/'
      expect(response.body).to eq('{"rails_version":"7.0.2.3","ruby_version":"3.0.3","rails_environment":"test","developer":"Ana Pérola"} ')
      expect(response.status).to eq(200)
    end
  end
end
