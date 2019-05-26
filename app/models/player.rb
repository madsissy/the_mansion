class Player < ApplicationRecord
    after_update :capping_values

    # Serialize
      serialize :relations, Hash

  ############################################

    # Belongs to
      belongs_to :user

  ############################################

    # Validations
      validates :firstname,   presence: true
      validates :lastname,    presence: true
      validates :eyes_color,  presence: true
      validates :hair_color,  presence: true
      validates :hair_length, presence: true


  ############################################

    # Enums
      enum eyes_color:  [:blue_eyes, :green_eyes, :brown_eyes, :black_eyes]
      enum hair_color:  [:blond_hair, :dark_hair, :brown_hair, :red_hair]
      enum hair_length: [:very_short_hair, :short_hair, :long_hair, :very_long_hair]
      enum lips_size:   [:thin_lips, :normal_lips, :plush_lips, :pornstar_lips]
      enum breast_size: [:flat_breast, :a_cup, :b_cup, :c_cup, :d_cup, :e_cup, :f_cup, :g_cup]
      enum ass_size:    [:flat_ass, :small_ass, :rounder_ass, :big_ass, :huge_ass]
      enum dick_size:   [:tiny_dick, :small_dick, :normal_dick, :big_dick, :huge_dick]


  ############################################

    # Methods

    # Capped values
    def capping_values
      self.energy = 100   if energy > 100
      self.arousal = 100  if arousal > 100
      self.feminity = 100 if feminity > 100
      self.hygiene = 100  if hygiene > 100
      self.hunger = 100   if hunger > 100
      self.thirst = 100   if thirst > 100
    end

    def full_name
      "#{firstname} #{lastname}"
    end
end
