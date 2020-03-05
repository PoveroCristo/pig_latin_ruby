#write your code here
def translate(string)
  split_string = string.split(" ")
  words_array = []

  def contains_vowel(vowel_string)
    vowel_string =~ /[aeiou]/
  end

  #check if a string has only one word
  if (split_string.length == 1)
    split_word_one = split_string[0]
    #check if first letter is vowel
    if (contains_vowel(split_word_one[0]) == 0)
      return split_word_one + "ay"
    else
      #check if only the first letter is consonant
      if (contains_vowel(split_word_one[1]) == 0)
        if (split_word_one[0] == "q")
          chopped_string_first = split_word_one[2..-1]
          return chopped_string_first + split_word_one[0] + split_word_one[1] + "ay"
        elsif (split_word_one[0] != "q")
          chopped_string_first = split_word_one[1..-1]
          return chopped_string_first + split_word_one[0] + "ay"
        end
      else
        #check if the second letter is consonant
        if (contains_vowel(split_word_one[1]).nil?)
          if (contains_vowel(split_word_one[2]) == 0)
            if (split_word_one[1] != "q")
              chopped_string_first = split_word_one[2..-1]
              return chopped_string_first + split_word_one[0] + split_word_one[1] + "ay"
            elsif (split_word_one[1] == "q")
              chopped_string_first = split_word_one[3..-1]
              return chopped_string_first + split_word_one[0] + split_word_one[1] + split_word_one[2] + "ay"
            end
            #check if third letter is consonant
          elsif (contains_vowel(split_word_one[2]).nil?)
            chopped_string_first = split_word_one[3..-1]
            return chopped_string_first + split_word_one[0] + split_word_one[1] + split_word_one[2] + "ay"
          end
        end
      end
    end
    #check if a string has more than one word
  else
    i = 0
    loop do
      split_word_array = split_string[i]
      #check if first letter is vowel
      if (contains_vowel(split_word_array[0]) == 0)
        word_into_array = split_word_array + "ay"
        words_array << word_into_array
      else
        #check if only the first letter is consonant
        if (contains_vowel(split_word_array[1]) == 0)
          if (split_word_array[0] == "q")
            chopped_string_first = split_word_array[2..-1]
            word_into_array = chopped_string_first + split_word_array[0] + split_word_array[1] + "ay"
            words_array << word_into_array
          elsif (split_word_array[0] != "q")
            chopped_string_first = split_word_array[1..-1]
            word_into_array = chopped_string_first + split_word_array[0] + "ay"
            words_array << word_into_array
          end
        else
          #check if second letter is consonant
          if (contains_vowel(split_word_array[1]).nil?)
            if (contains_vowel(split_word_array[2]) == 0)
              if (split_word_array[1] != "q")
                chopped_string_first = split_word_array[2..-1]
                word_into_array = chopped_string_first + split_word_array[0] + split_word_array[1] + "ay"
                words_array << word_into_array
              elsif (split_word_array[1] == "q")
                chopped_string_first = split_word_array[3..-1]
                word_into_array = chopped_string_first + split_word_array[0] + split_word_array[1] + split_word_array[2] + "ay"
                words_array << word_into_array
              end
              #check if third letter is consonant
            elsif (contains_vowel(split_word_array[2]).nil?)
              chopped_string_first = split_word_array[3..-1]
              word_into_array = chopped_string_first + split_word_array[0] + split_word_array[1] + split_word_array[2] + "ay"
              words_array << word_into_array
            end
          end
        end
      end
      i += 1
      if i == split_string.length
        break
      end
    end
    final_string = words_array.join(" ")
    return final_string
  end
end
