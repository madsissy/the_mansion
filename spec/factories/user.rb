require 'faker'

FactoryBot.define do
  factory :user do |f|
    f.email {Faker::Internet.email}
    f.password 'azerty'
    f.password_confirmation 'azerty'
  end
end
