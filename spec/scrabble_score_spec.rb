require('rspec')
require('scrabble_score')

 describe('scrabble_score') do
  it("returns a scrabble score for a letter") do
   expect(scrabble_score("a")).to(eq(1))
  end
  it("returns compiled scrabble score from word") do
    expect(scrabble_score("muffin")).to(eq(14))
  end
  it("takes into account uppercase letters") do
    expect(scrabble_score("Stalin")).to(eq(6))
  end
end
