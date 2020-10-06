require_relative '../lib/trader'

describe "the trader function" do
  it "the best day to buy and sell" do
    expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1,4])
  end
end
