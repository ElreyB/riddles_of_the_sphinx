class Sphinx
  attr_accessor :correct, :wrong, :question_asked

  def initialize
    @wrong = 0
    @correct = 0
    @question_asked = 0
    @question_1
    @question_2
    @question_3
  end

  def questions
    questions = {
      1 => "I do not breathe, but I run and jump.\nI do not eat,\nbut I swim and stretch.\nI do not drink,\nbut I sleep and stand.\nI do not think, but I grow and play.\nI do not see,\nbut you see me every day.",
      2 => "Always wax,\nyet always wane:\nI melt,\nsuccumbéd to the flame.\nLighting darkness,\nwith fate unblest,\nI soon devolve to shapeless mess.",
      3 => "With potent,\nflowery words speak I,\nOf something common, vulgar, dry;\nI weave webs of pedantic prose,\nIn effort to befuddle those,\nWho think I wile time away,\nIn lofty things,\nabove all day The common kind that linger where Monadic beings live and fare;\nPractical I may not be,\nBut life, it seems, is full of me!",
      4 => "Close to the words of life stay I,\nBut I wither, wane, and grow dry.",
      5 => "To you,\nrude would I never be,\nThough I flag my tongue for all to see.",
      6 => "I welcome the day with a show of light,\nI steathily came here in the night.\nI bathe the earthy stuff at dawn,\nBut by the noon, alas! I'm gone.",
      7 => "Here there is no north, west, nor east,\nAnd weather fit for not man nor beast.",
      8 => "Large as a mountain,\nsmall as a pea,\nEndlessly swimming in a waterless sea.",
      9 => "What walks on four legs in the morning,\ntwo legs in the afternoon,\nthree legs in the evening, and no legs at night?"
    }
  end

  def answers
    answers = {
      1 => "a leg",
      2 => "a candle",
      3 => "a riddle",
      4 => "a flower",
      5 => "a dog",
      6 => "morning dew",
      7 => "north pole",
      8 => "asteroids",
      9 => "a human"
    }
  end

  def ask_question(question_key)
    @question_asked = question_key
    questions[question_key]
  end

  def get_answer
    answers[@question_asked]
  end

  def answer_given(answer)
    binding.pry
    answer == get_answer ? @correct += 1 : @wrong += 1
  end
end
