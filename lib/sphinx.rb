class Sphinx
  attr_reader :correct, :wrong

  def initialize
    @wrong = 0
    @correct = 0
  end

  def questions
    questions = {
      1 => "I do not breathe, but I run and jump. I do not eat, but I swim and stretch. I do not drink, but I sleep and stand. I do not think, but I grow and play. I do not see, but you see me every day.",
      2 => "Always wax, yet always wane: I melt, succumbéd to the flame. Lighting darkness, with fate unblest, I soon devolve to shapeless mess.",
      3 => "With potent, flowery words speak I, Of something common, vulgar, dry; I weave webs of pedantic prose, In effort to befuddle those, Who think I wile time away, In lofty things, above all day The common kind that linger where Monadic beings live and fare; Practical I may not be, But life, it seems, is full of me!",
      4 => "Close to the words of life stay I, But I wither, wane, and grow dry.",
      5 => "To you, rude would I never be, Though I flag my tongue for all to see.",
      6 => "I welcome the day with a show of light, I steathily came here in the night. I bathe the earthy stuff at dawn, But by the noon, alas! I'm gone.",
      7 => "Here there is no north, west, nor east, And weather fit for not man nor beast.",
      8 => "Large as a mountain, small as a pea, Endlessly swimming in a waterless sea. "
    }
  end
end
