class Word
  def initialize(word, compare_word)
    @word = word
    @compare_word = compare_word
  end

  def anagram()
    compare_array = @compare_word.downcase.gsub(/[^0-9a-z]/i, '').chars
    letters = @word.downcase.gsub(/[^0-9a-z]/i, '').chars()
    puts compare_array
    puts letters

    if !(@word.include? 'a' || 'e' || 'i' || 'o' || 'u' || 'y')
      return 'You need to input actual words!'
    end
    antigram = true
    anagram = true
    letters.each do |letter|
      if !(compare_array.include?(letter))
        anagram = false
      end
      if (compare_array.include?(letter))
        antigram = false
      end
    end
    if anagram
      return 'These words are anagrams'
    elsif antigram
      return 'These words are antigrams'
    end
    return 'These words are not anagrams'
  end
end
