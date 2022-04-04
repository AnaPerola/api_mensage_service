# frozen_string_literal: true

FactoryBot.define do
  factory :message do
    content { 'MyString' }
    username { 'MyString' }
    color { 'MyString' }
    effect { 'MyString' }
  end
end
