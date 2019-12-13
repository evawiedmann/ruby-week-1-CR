class Anagrams
  def initialize(word)
    @word = word
    @compare_word = compare_word
  end

  def compare()
    compare_array = @compare_word.chars()
    letters = @word.chars()
    letters.each do |letter|
      if compare_array.include?(letter)
          puts 'These words are anagrams'
        end
      end
    end
  end
