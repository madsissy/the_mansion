class Users::GamesController < ApplicationController

  def index
    @games = policy_scope[:users, Game]
  end

  def new
  end

  def create
  end

  def destroy

  end

  private

  def game_params
    params.require(:game).permit(:user, :energy, :hygiene, :arousal, :feminity, :will, :charisma, :strength, :agility, :intelligence)
  end

  def pundit_user
    current_user
  end
end
