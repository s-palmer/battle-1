require 'game'

describe Game do
  let(:new_game) { Game.new }
  let(:player_2) { Player.new("Bob") }
  describe '#attack' do  
    it 'reduces the player hp by 10' do
      new_game.attack(player_2)
      expect(player_2.hp).to eq(50)
    end
  end
end