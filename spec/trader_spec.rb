require_relative '../lib/trader'

describe "the caesar cipher function" do
  it "shift each letter of the same caracter" do
    expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1,4])
  end
end
