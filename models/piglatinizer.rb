class PigLatinizer

  attr_accessor :phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def piglatinize
    words = phrase.split(" ")

    pigged_words = []

    words.each do |word|
      if word.length == 1
        word.push('way')
      else
        word.push(word[0])
        word.push('ay')
        word.shift
      end
      pigged_words << word
    end

  end

end
