require 'spec_helper'

describe Game do
  it "has a valid factory" do
    expect(FactoryBot.create(:game)).to be_valid
  end

  context 'attributes' do
    it 'is invalid without a user_id' do
      expect(FactoryBot.build(:game, user_id: nil)).not_to be_valid
    end
    it 'is invalid without energy' do
      expect(FactoryBot.build(:game, energy: nil)).not_to be_valid
    end
    it 'is invalid without strength' do
      expect(FactoryBot.build(:game, strength: nil)).not_to be_valid
    end
    it 'is invalid without agility' do
      expect(FactoryBot.build(:game, agility: nil)).not_to be_valid
    end
    it 'is invalid without intelligence' do
      expect(FactoryBot.build(:game, intelligence: nil)).not_to be_valid
    end
    it 'is invalid without hygiene' do
      expect(FactoryBot.build(:game, hygiene: nil)).not_to be_valid
    end
    it 'is invalid without feminity' do
      expect(FactoryBot.build(:game, feminity: nil)).not_to be_valid
    end
    it 'is invalid without arousal' do
      expect(FactoryBot.build(:game, arousal: nil)).not_to be_valid
    end
    it 'is invalid without will' do
      expect(FactoryBot.build(:game, will: nil)).not_to be_valid
    end
    it 'is invalid without charisma' do
      expect(FactoryBot.build(:game, charisma: nil)).not_to be_valid
    end
  end

  context 'callback' do
    before :each do
      @game = FactoryBot.build(:game)
    end
    it "cap energy to 100" do
      @game.update(energy: 180)
      @game.run_callbacks(:update) {false}
      expect(@game.energy).to eql(100)
    end
    it "keeps energy value if < 100" do
      @game.update(energy: 75)
      @game.run_callbacks(:update) {false}
      expect(@game.energy).not_to eql(100)
    end
    it "cap hygiene to 100" do
      @game.update(hygiene: 180)
      @game.run_callbacks(:update) {false}
      expect(@game.energy).to eql(100)
    end
    it "keeps hygiene value if < 100" do
      @game.update(hygiene: 75)
      @game.run_callbacks(:update) {false}
      expect(@game.hygiene).not_to eql(100)
    end
    it "cap arousal to 100" do
      @game.update(arousal: 180)
      @game.run_callbacks(:update) {false}
      expect(@game.energy).to eql(100)
    end
    it "keeps arousal value if < 100" do
      @game.update(arousal: 75)
      @game.run_callbacks(:update) {false}
      expect(@game.arousal).not_to eql(100)
    end
    it "cap feminity to 100" do
      @game.update(feminity: 180)
      @game.run_callbacks(:update) {false}
      expect(@game.feminity).to eql(100)
    end
    it "keeps feminity value if < 100" do
      @game.update(feminity: 75)
      @game.run_callbacks(:update) {false}
      expect(@game.feminity).not_to eql(100)
    end
  end
end
