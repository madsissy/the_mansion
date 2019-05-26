class Users::PlayersController < ApplicationController

  def index
    @players = current_user.players
  end

  def new
  end

  def create
    # redirect to new player
  end

  def destroy

  end

  private

  def game_params
    params.require(:game).permit(:user, :energy, :hygiene, :arousal, :feminity, :will, :charisma, :strength, :agility, :intelligence)
  end
end
