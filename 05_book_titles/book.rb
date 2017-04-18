class Book
# write your code here

  def initialize()
  end

  def title
    @title
  end


  def title=(name)
    @title = titleize(name)
  end

  def titleize(phrase)
    words_no_cap = ["and", "or", "the", "over", "to", "the", "a", "but", "of", "in", "an"]
    phrase.capitalize!
    phrase = phrase.split
    phrase.map do |word|
      if words_no_cap.include?(word)
        word
      else
        word.capitalize
      end
    end.join(" ")
  end
end
