require 'faker'

FactoryBot.define do
  factory :game do |f|
    f.user User.first
    f.strength rand(1..9)
    f.agility rand(1..9)
    f.intelligence rand(1..9)
    f.will rand(1..9)
    f. charisma rand(1..9)
    f.energy 100
    f.hygiene 100
    f.arousal 0
    f.feminity 0
    f.relation "lol"
  end
end
