require 'faker'

FactoryBot.define do
  factory :game do |f|
    f.user
    f.name "Test game"
    f.strength 5
    f.agility 6
    f.intelligence 3
    f.will 5
    f. charisma 8
    f.energy 100
    f.hygiene 100
    f.arousal 0
    f.feminity 0
    f.relations ({Bob: 7, John: 8})
  end
end
