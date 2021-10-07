require 'game'

describe Game do
  
  let(:player_1) { double :player }
  let(:player_2) { double :player }
  let(:new_game) { Game.new(player_1, player_2) }
  
  describe '#initialize' do
    it 'can access player 1' do
      expect(new_game.player_1).to eq(player_1)
    end
  end

  describe '#initialize' do
    it 'can access player 2' do
      expect(new_game.player_2).to eq(player_2)
    end
  end
  
  describe '#attack' do  
    it 'receives the message to reduce hp' do
      expect(new_game.player_2).to receive(:reduce_hp)
      new_game.attack(player_2)
    end
  end
end