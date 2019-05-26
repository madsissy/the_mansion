class PlayersController < ApplicationController
  before_action :set_player, only: [:destroy]
  before_action :max_players_limit_for_user, only: [:new, :create]

  def index
    @players = current_user.players
  end

  def new
    @player = Player.new
  end

  def create
    @player = current_user.players.build(player_params)
    if @player.save
      @player.create_calendar
      redirect_to start_path(player_hashid: @player.hashid)
    else
      render :new
    end
  end

  def destroy
    @player.destroy
  end

  private

  def set_player
    @player = Player.find(params[:id])
  end

  def max_players_limit_for_user
    redirect_to players_path, flash: { error: "You can create only three games. Please delete one if you want to start a new adventure !" } if current_user.players.count >= 3
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
