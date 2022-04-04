# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

  validates :password, length: { minimum: 6 }, if: -> { new_record? || !password.nil? }

  enum role: { commom: 0, admin: 1 }
end
