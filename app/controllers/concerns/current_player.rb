module CurrentPlayer
  extend ActiveSupport::Concern

  included do
    before_action :set_current_player
  end

  private

  def set_current_player
    @current_player ||= Player.find_by_hashid(params[:player_hashid])
  end
end
