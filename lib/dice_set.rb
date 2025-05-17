# frozen_string_literal: true

class DiceSet

  def to_s
    "[#{@first_die}] - [#{@second_die}]"
  end

  def roll
    @first_die, @second_die = dice
  end

  def self.six
    @first_die = 6
    @second_die = 6
    [@first_die, @second_die]
  end

  private

  def dice
    array = (1..6).to_a.shuffle
    a = array[0]
    b = array[1]
    [a, b]
  end
end
