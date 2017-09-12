require 'rspec'
require 'sphinx'

describe 'Sphinx' do
  let(:sphinx) { Sphinx.new }

  describe '#initialize' do
     it 'will have a readable correct count' do
       expect(sphinx.correct).to eq 0
     end

     it 'will have a readable wrong count' do
       expect(sphinx.wrong).to eq 0
     end
  end

  describe '#questions' do
    it 'will be a Hash' do
      expect(sphinx.questions).to be_a Hash
    end

    it 'returns a question' do
      question = "Close to the words of life stay I, But I wither, wane, and grow dry."
      expect(sphinx.questions[4]).to eq question
    end
  end
end
