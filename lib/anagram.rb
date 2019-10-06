# Your code goes here!
require 'pry'
class Anagram

    attr_accessor :word

    @@all = []

    def initialize(word)
        @word = word
        @@all << self
    end

    def self.all
        @@all
    end

    def match(instances)
        anagram_array = []
        letters = self.word.split("")
        split_instances = instances.map do |instance_word|
            instance_word.split("")
        end
        split_instances.each do |split_word|
            if split_word.sort == letters.sort
                anagram_array << split_word.join
            end
        end
        anagram_array
    end


end