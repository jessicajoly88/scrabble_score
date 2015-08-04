require('rspec')
require('scrabble_score')

 describe('scrabble_score') do
  it("returns a scrabble score for a letter") do
   expect(("a").scrabble_score()).to(eq(1))
  end
  it("returns compiled scrabble score from word") do
    expect(("muffin").scrabble_score()).to(eq(14))
  end
  it("takes into account uppercase letters") do
    expect(("Stalin").scrabble_score()).to(eq(6))
  end
end
