require 'game'

RSpec.describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double :player }
  let(:player2) { double :player }

  describe 'player1' do
    it 'retrieves the first player' do
      expect(game.player1).to eq player1
    end
  end
  describe 'player2' do
    it 'retrieves the first player' do
      expect(game.player2).to eq player2
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(player2).to receive(:receive_damage)
      game.attack(player2)
    end
  end
end

#
# # As Player 1,
# # So I can start to win a game of Battle,
# # I want my attack to reduce Player 2's HP by 10
#
# describe '#hit_points'  do
#   it 'returns the hit points' do
#     expect(bear.hit_points).to eq described_class::DEFAULT_HIT_POINTS
#   end
# end
#
# describe '#attack' do
#   xit 'damages the player' do
#     expect(bear).to receive(:receive_damage)
#     bear.attack(bunny)
#   end
# end
#
# describe '#receive_damage' do
#   it 'reduces the player hit points' do
#     expect {bear.receive_damage}.to change {bear.hit_points}.by(-10)
#   end
# end
#
# end
