# Your code goes here!
class Anagram

    attr_accessor :name

    def initialize(word)
        @name = word
    end

    def match(array)
        solution = []
        array.map do |word|
            if word.split("").sort.join("") == @name.split("").sort.join("")
                solution << word
            end
        end
        return solution
    end
end