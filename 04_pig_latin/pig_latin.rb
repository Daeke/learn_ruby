#write your code here
def translate(phrase)
  vowels = ["a","e","i","o","u"]
  word_arr = phrase.split()
  word_arr.map do |word|
    if vowels.include?(word[0])
        word + "ay"
    else
      if !vowels.include?(word[1])
        if word[1..2] == "qu"
          word.slice(3..-1) + word[0..2] + "ay"
        else
          if !vowels.include?(word[2])
            if word[2..3] == "qu"
              word.slice(4..-1) + word[0..4] + "ay"
            else
              word.slice(3..-1) + word[0..2] + "ay"
            end
          else
            word.slice(2..-1) + word[0..1] + "ay"
          end
        end
      else
        if word[0..1] == "qu"
          word.slice(2..-1) + word[0..1] + "ay"
        else
          word.slice(1..-1) + word[0] + "ay"
        end
      end
    end
  end.join(" ")
end