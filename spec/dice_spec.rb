require 'dice'

describe Dice do
  it "allows the player to roll dice" do
    expect(subject).to respond_to(:roll)
  end
  it "returns a number between 1 and 6 when rolled" do
    expect(subject.roll).to be_between(1, 6)
  end
  it "return a random number when rolled" do
    dice = Dice.new
    allow(dice).to receive(:rand).and_return(5)
    expect(dice.roll).to eq(5)
  end
end