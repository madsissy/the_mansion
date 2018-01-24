require 'spec_helper'

describe Game do
  it "has a valid factory" do
    expect(FactoryBot.create(:game)).to be_valid
  end
end
