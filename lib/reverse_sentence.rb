# A method to reverse the words in a sentence, in place.
# Time complexity: O(n^2), where O is the length of the string
# Space complexity: O(1)
def reverse_sentence(my_sentence)
  if my_sentence == nil
    return nil
  end

  length = my_sentence.length
  insertion_point = length - 1
  char_counter = 0
  length.times do |i|
    c = my_sentence[0]
    if c == " "
      if char_counter != 0
        insertion_point -= char_counter
        char_counter = 0
      end
      my_sentence[0..insertion_point] = shift_left(my_sentence[0..insertion_point])

      my_sentence[insertion_point] = c
      insertion_point -= 1
    else
      char_counter += 1
      my_sentence[0..insertion_point] = shift_left(my_sentence[0..insertion_point])

      my_sentence[insertion_point] = c
    end
  end

  return my_sentence
end

def shift_left(sentence)
  i = 0
  length = sentence.length
  (length - 1).times do |i|
    c = sentence[i + 1]
    sentence[i] = c

    i += 1
  end

  return sentence
end
