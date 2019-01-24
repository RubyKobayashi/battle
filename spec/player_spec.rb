require 'player'

RSpec.describe Player do
 subject(:bear) {described_class.new('bear') }

  describe '#name' do
  it 'returns its name' do
   expect(bear.name).to eq('bear')
  end
end

end
