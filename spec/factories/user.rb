# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    name { Faker::Name.name_with_middle }
    email { Faker::Internet.email }
    password_digest { Faker::Internet.password(min_length: 8) }

    trait :common do
      role { 0 }
    end

    trait :admin do
      role { 1 }
    end
  end
end
