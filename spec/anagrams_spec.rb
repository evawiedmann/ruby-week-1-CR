require('rspec')
require('anagrams')

describe ('#anagrams') do
  it("returns if two words are anagrams") do
    word = Word.new('ta','at')
    expect(word.compare()).to(eq(true))
  end
end
