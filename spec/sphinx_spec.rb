require 'rspec'
require 'sphinx'

describe 'Sphinx' do
  let(:player) { Sphinx.new }

  describe '#initialize' do
     it 'will have a readable correct count' do
       expect(player.correct).to eq 0
     end

     it 'will have a readable wrong count' do
       expect(player.wrong).to eq 0
     end
  end
end
