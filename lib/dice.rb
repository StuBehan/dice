class Dice
  attr_reader :counter, :rolls
  def initialize
    @counter = 0
    @rolls = []
  end

  def roll
    num = rand(1..6)
    @counter += 1
    @rolls << num
    return num
  end
  def multi_roll(num)
    dice = []
    num.times { dice << roll }
    return dice
  end

  def score(num)
    multi_roll(num).sum
  end
end