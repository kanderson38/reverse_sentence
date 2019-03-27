# A method to reverse the words in a sentence, in place.

# Time complexity: O(n), where n = the length of the string. The program iterates over the string once in the reverse_words method and then over each word once again in the string_reverse method.
# Space complexity: O(1). There is a variable that holds characters in the string_reverse method, and all changes to the string are made in place.

def reverse_sentence(my_words)
  return nil if !my_words

  my_words = string_reverse(my_words)
  length = my_words.length

  beginning_index = 0
  end_index = 0

  until end_index == length
    if my_words[end_index] != " "
      end_index += 1
    else
      if end_index != beginning_index
        my_words[beginning_index...end_index] = string_reverse(my_words[beginning_index...end_index])
        beginning_index = end_index
      else
        beginning_index += 1
        end_index += 1
      end
    end
    if end_index == length - 1
      my_words[beginning_index..end_index] = string_reverse(my_words[beginning_index..end_index])
    end
  end

  return my_words
end

def string_reverse(my_string)
  end_index = my_string.length - 1
  begin_index = 0

  until end_index <= begin_index
    c = my_string[end_index]
    my_string[end_index] = my_string[begin_index]
    my_string[begin_index] = c
    end_index -= 1
    begin_index += 1
  end
  return my_string
end
