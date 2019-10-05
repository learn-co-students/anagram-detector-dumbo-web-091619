require 'pry'
class Anagram

  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(arr)
    new_arr = []
    sorted_word = @word.split("").sort.join("")
    sorted_array_words = arr.map { |word| word.split("").sort.join("")}
    i = 0
    while i < sorted_array_words.length
      if sorted_word == sorted_array_words[i]
      new_arr << arr[i]
      else
      new_arr
      end
      i += 1
    end
    new_arr
  end
end


# Your code goes here!
