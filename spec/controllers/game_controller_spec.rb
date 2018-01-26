require 'spec_helper'
include Devise::Test::ControllerHelpers

describe Users::GamesController, :type => :controller do
  login_user

  describe "GET index" do
     it "renders the index template" do
      get users_games_url
      render_template(“index”)
    end
  end
end
