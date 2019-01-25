require 'player'

RSpec.describe Player do
 subject(:bear) {Player.new('Bear') }
 subject(:bunny) {Player.new('Bunny')}

  describe '#name' do
  it 'returns the name' do
   expect(bear.name).to eq('Bear')
  end
end

# As Player 1,
# So I can start to win a game of Battle,
# I want my attack to reduce Player 2's HP by 10

describe '#hit_points'  do
  it 'returns the hit points' do
    expect(bear.hit_points).to eq described_class::DEFAULT_HIT_POINTS
  end
end

describe '#attack' do
  xit 'damages the player' do
    expect(bear).to receive(:receive_damage)
    bear.attack(bunny)
  end
end

describe '#receive_damage' do
  it 'reduces the player hit points' do
    expect {bear.receive_damage}.to change {bear.hit_points}.by(-10)
  end
end

end
