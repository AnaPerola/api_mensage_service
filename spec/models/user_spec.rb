# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  context 'Valid' do
    it 'is valid when it contains the name and email' do
      user = User.new(
        name: 'Ana',
        email: 'ana@example.com'
      )

      expect(user).to be_valid
    end
  end

  context 'Invalid' do
    it 'is invalid if name is blank' do
      user = User.new(
        name: '',
        email: ''
      )
      user.valid?
      expect(user.errors[:name]).to include("can't be blank")
    end

    it 'is invalid if email is blank' do
      user = User.new(
        name: 'ana',
        email: ''
      )
      user.valid?
      expect(user.errors[:email]).to include("can't be blank")
    end

    it 'is invalid when the email is null' do
      user = User.new(email: nil)
      user.valid?
      expect(user.errors[:email]).to include("can't be blank")
    end

    it 'is invalid if the same email already exists' do
      user = User.create(
        name: 'ana',
        email: 'ana@example.com'
      )
      user = User.new(
        name: 'julia',
        email: 'ana@example.com'
      )
      user.valid?
      expect(user.errors[:email]).not_to include('User already registered')
    end
  end
end
