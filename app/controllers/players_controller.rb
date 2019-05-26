class PlayersController < ApplicationController
  before_action :set_player, only: [:destroy]

  def index
    @players = current_user.players
  end

  def new
    @player = Player.new
  end

  def create
    @player = current_user.players.build(player_params)
    if @player.save
      redirect_to root_path
    else
      render :new
    end
    # redirect to intro
  end

  def destroy
  end

  private

  def set_player
    @player = Player.find(params[:id])
  end

  def player_params
    params.require(:player).permit(
      :firstname,
      :lastname,
      :eyes_color,
      :hair_color,
      :hair_length
    )
  end
end
