require('rspec')
require('anagrams')

describe ('#anagrams') do
  it("returns if two words are anagrams") do
    word = Word.new('ta','at')
    expect(word.compare()).to(eq(true))
  end
  it('is not case sensitive') do
    word = Word.new('Ta','at')
    expect(word.compare()).to(eq(true))
  end
  it('returns an error message if the input has no vowels') do
    word = Word.new('tt','at')
    expect(word.compare().to(eq('You need to input actual words!')
  end
  it('returns if two words are antigrams') do
    word = Word.new('at', 'by')
    expect(word.compare()).to(eq(true))
  end
  it('returns result with words or phrases and ignores spaces and punctuation')
end
