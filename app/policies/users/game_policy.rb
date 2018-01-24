class Users::GamePolicy < ApplicationPolicy
  def initialize(user, record)
    @user = user
    @record = record[1]
  end

  class Scope < Scope
    def resolve
      scope[1].where(user: user)
    end
  end

  def new?
    games_limit_isnt_reached?
  end

  def create?
    games_limit_isnt_reached?
  end

  def destroy?
    games_limit_isnt_reached?
  end

  private

  def games_limit_isnt_reached?
    user.games.size < 3
  end
end
