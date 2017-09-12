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
      question = "Close to the words of life stay I,\nBut I wither, wane, and grow dry."
      expect(sphinx.questions[4]).to eq question
    end
  end

  describe '#answers' do
    it 'will be a Hash' do
      expect(sphinx.answers).to be_a Hash
    end

    it 'returns a question' do
      answer = "A Bible-pressed leaf, or flower."
      expect(sphinx.answers[4]).to eq answer
    end
  end

  describe '#ask_question' do
    it 'will return a question' do
      question = "Close to the words of life stay I,\nBut I wither, wane, and grow dry."
      expect(sphinx.ask_question(4)).to eq question
    end

    it 'will change the value of #question_asked' do
      expect{ sphinx.ask_question(4) }.to change{ sphinx.question_asked }.from(0).to(4)
    end
  end

  describe '#get_answer' do
    it 'will return answer to question' do
      sphinx.ask_question(4)
      expect(sphinx.get_answer).to eq "A Bible-pressed leaf, or flower."
    end
  end

  describe '#answer_given' do
    it 'will change #correct from 0 to 1' do
      sphinx.ask_question(4)
      expect{ sphinx.answer_given("A Bible-pressed leaf, or flower.") }.to change{ sphinx.correct }.from(0).to(1)
    end

    it 'will change #wrong from 0 to 1' do
      sphinx.ask_question(4)
      expect{ sphinx.answer_given("A bike") }.to change{ sphinx.wrong }.from(0).to(1)
    end
  end
end
