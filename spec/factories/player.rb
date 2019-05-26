require 'faker'

FactoryBot.define do
  factory :player do |f|
    f.user
    f.firstname Faker::Name.first_name
    f.lastname  Faker::Name.last_name
  end
end
