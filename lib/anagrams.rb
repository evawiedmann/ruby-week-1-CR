class Anagrams
  def initialize(word)
    @word = word
    @compare_word = compare_word
  end

  def compare()
    compare_word = @compare_word.downcase()
    compare_array = @compare_word.chars()
    letters = @words.downcase()
    letters = @word.chars()
    if @word.include? 'a' | 'e' | 'i' | 'o' | 'u' | 'y'

      letters.each do |letter|
        if compare_array.include?(letter)
          puts 'These words are anagrams'
        end
      end
    puts 'You need to input actual words!'
  end
  # You need to input actual words!
