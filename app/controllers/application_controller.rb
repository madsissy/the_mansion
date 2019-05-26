class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # include Pundit

  # Devise
  before_action :authenticate_user!, unless: :devise_controller?
  #
  # # Pundit: white-list approach.
  # after_action :verify_authorized, except: :index, unless: :skip_pundit?
  # after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  def after_sign_in_path_for(resource)
    users_games_path
  end
end
