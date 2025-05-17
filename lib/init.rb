# frozen_string_literal: true

require_relative 'dice_set'
require_relative 'person'

# puts '---------------------------'
# puts 'Welcome to the Dice Roller '
# puts '---------------------------'
#
# dice = DiceSet.new
# puts dice
#
# print 'Type \'r\' to roll or \'q\' to quit: '
# roll = gets.chomp.downcase
#
# until roll == 'q'
#   dice.roll
#   puts dice
#
#   print 'Type \'r\' to roll or \'q\' to quit: '
#   roll = gets.chomp.downcase
# end
#
# puts DiceSet.six


ebrahim = Person.new('Ebrahim', 'Cham', 1, 'ebrahim@email.com')
puts ebrahim.full_name
puts ebrahim.initial_and_last_name
