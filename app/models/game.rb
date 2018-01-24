class Game < ApplicationRecord
    before_update :capping_values

    # Serialize
      serialize :relations, Hash

  ############################################

    # Belongs to
      belongs_to :user

  ############################################

    # Methods

    # Capped values
    def capping_values
      self.energy = 100 if energy > 100
      self.arousal = 100 if arousal > 100
      self.feminity = 100 if feminity > 100
    end
end
