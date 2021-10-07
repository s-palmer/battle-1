describe Player do

  let(:player_1) { Player.new("Bob") }
  let(:player_2) { Player.new("Mark") }
  HP = 60

  describe '#name' do
    it 'returns the player name' do
      expect(player_1.name).to eq("Bob")
    end
  end
end
