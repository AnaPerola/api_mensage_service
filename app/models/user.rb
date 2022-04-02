# frozen_string_literal: true

class User < ApplicationRecord
  validates :name, presence: true, allow_blank: false
  validates :email, presence: true, uniqueness: true
end
