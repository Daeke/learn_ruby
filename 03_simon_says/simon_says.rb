#write your code here
def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str, length = 2)
  repeater = str
  (length-1).times do
    repeater += " " + str
  end
  repeater
end

def start_of_word(word, letters)
  word[0..(letters-1)]
end

def first_word(word)
  word.split[0]
end

def titleize(phrase)
  words_no_cap = ["and", "or", "the", "over", "to", "the", "a", "but"]
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