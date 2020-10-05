require_relative '../lib/caesar_cipher'

describe "the caesar cipher function" do
  it "shift each letter of the same caracter" do
    expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
  end
end
