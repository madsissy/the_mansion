class Game < ApplicationRecord
    before_update :capping_values

    # Serialize
      serialize :relations, Hash

  ############################################

    # Belongs to
      belongs_to :user

  ############################################

    # Validations
      validates :strength, presence: true
      validates :agility, presence: true
      validates :intelligence, presence: true
      validates :charisma, presence: true
      validates :will, presence: true
      validates :energy, presence: true
      validates :hygiene, presence: true
      validates :feminity, presence: true
      validates :arousal, presence: true
      validates :name, presence: true


  ############################################

    # Methods

    # Capped values
    def capping_values
      self.energy = 100 if energy > 100
      self.arousal = 100 if arousal > 100
      self.feminity = 100 if feminity > 100
      self.hygiene = 100 if hygiene > 100
    end
end
