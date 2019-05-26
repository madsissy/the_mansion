class User < ApplicationRecord

  #Gem
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :trackable, :validatable

  ##############################################################

    # Has many
      has_many :players


end
