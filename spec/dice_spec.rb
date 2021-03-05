require 'dice'

describe Dice do
  it "allows the player to roll dice" do
    expect(subject).to respond_to(:roll)
  end
  it "returns a number between 1 and 6 when rolled" do
    expect(subject.roll).to be_between(1, 6)
  end
  it "return a random number when rolled" do
    allow(subject).to receive(:rand).and_return(5)
    expect(subject.roll).to eq(5)
  end
  it "allows rolling specified number of dice" do
    expect(subject.multi_roll(2).count).to eq(2)
  end
  it "allows rolling specified number of dice" do
    expect(subject.multi_roll(5).count).to eq(5)
  end
  it "records all previous die rolls" do
    expect(subject.rolls.count).to eq(subject.counter)
  end
  it "returns sum of multi-dice rolled" do
    allow(subject).to receive(:rand).and_return(4,2,3,1)
    expect(subject.score(4)).to eq(10)
  end
  it "returns number of dice specified" do
    expect(subject.roll(2)).to
  end
end