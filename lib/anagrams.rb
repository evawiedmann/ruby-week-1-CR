class Word
  def initialize(word, compare_word)
    @word = word
    @compare_word = compare_word
  end

  def compare()
    compare_word = @compare_word.downcase()
    compare_word.gsub(/[^0-9a-z]/i, ‘’)
    compare_array = @compare_word.chars()
    letters = @word.downcase()
    letters.gsub(/[^0-9a-z]/i, ‘’)
    letters = @word.chars()
    if @word.include? 'a' || 'e' || 'i' || 'o' || 'u' || 'y'

      letters.each do |letter|
        if compare_array.include?(letter)
          puts 'These words are anagrams'
        elsif compare_array.exclude?(letter)
          puts 'These words are antigrams'
        end
      end
      puts 'You need to input actual words!'
    end
  end
end
