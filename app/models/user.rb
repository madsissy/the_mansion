class User < ApplicationRecord

  #Gem
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :trackable, :validatable

  ##############################################################

    # Has many
      has_many :games, before_add: :validate_game_limit

  ##############################################################

    # Methods

      # A user can have only 3 games
      def validate_game_limit(game)
        raise Exception.new if games.size > 3
      end
end
