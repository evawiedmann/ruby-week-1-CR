require('rspec')
require('anagrams')

describe ('#anagram') do
  it("returns if two words are anagrams") do
    word = Word.new('a','a')
    expect(word.anagram()).to(eq('These words are anagrams'))
  end
  it("returns if two words are not anagrams") do
    word = Word.new('a','t')
    expect(word.anagram()).to(eq('These words are antigrams'))
  end
  it("returns if two words are not anagrams") do
    word = Word.new('at','ap')
    expect(word.anagram()).to(eq('These words are not anagrams'))
  end
  it('is not case sensitive') do
    word = Word.new('Ta','at')
    expect(word.anagram()).to(eq('These words are anagrams'))
  end
  it('returns an error message if the input has no vowels') do
    word = Word.new('tt','at')
    expect(word.anagram()).to(eq('You need to input actual words!'))
  end
  it('returns if two words are antigrams') do
    word = Word.new('at', 'by')
    expect(word.anagram()).to(eq('These words are antigrams'))
  end
  it('returns result with words or phrases and ignores spaces and punctuation') do
    word = Word.new('at', 'by')
    expect(word.anagram()).to(eq('These words are antigrams'))
  end
end
