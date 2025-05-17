# frozen_string_literal: true
require_relative 'utils'
class FoodHub
  include Utils
  attr_accessor :restaurants

  def initialize(restaurants)
    @restaurants = restaurants
  end

  def display
    heading
    @restaurants.each do |item|
      print_entry(item)
      print "|\n"
    end
    hyphens
  end

  def add(new_entry)
    @restaurants << new_entry
  end

  def find(search_value, keyword = :name)
    entry = @restaurants.find { |item| item[keyword].to_s.downcase == search_value.to_s.downcase }
    entry ? print_entry(entry) : unavailable(search_value, keyword)
  end

  def sort
    @restaurants.sort! { |a, b| a[:name].to_s.downcase <=> b[:name].to_s.downcase }
  end

  private

  def heading
    underscores
    puts "|#{'Name'.ljust(20)}|#{'cuisine'.ljust(20)}|#{'Price'.ljust(8)}|"
    hyphens
  end

  def hyphens
    puts '-' * 52
  end

  def underscores
    puts '_' * 52
  end

  def print_entry(item)
    item.each do |key, value|
      print "|#{value.to_s.ljust(20)}" if %i[name].include?(key)
      print "|#{value.to_s.ljust(20)}" if %i[cuisine].include?(key)
      print "|$#{format(value.to_s).ljust(8)}" if %i[price].include?(key)
    end
  end

  def unavailable(search_value, keyword)
    puts "'#{search_value}' does not match any '#{keyword}' entry!"
  end
end

restaurants = [
  { name: 'Charma Goucha', cuisine: 'Unlimited BBQ', price: 20.25 },
  { name: 'Einstein', cuisine: 'Bagels', price: 10.5 },
  { name: 'Mountain Mike', cuisine: 'Pizza', price: 10.95 }
]
my_hash = FoodHub.new(restaurants)

# my_hash.display
my_hash.add({ name: 'Local', cuisine: 'Cherreh', price: 6.00 })
my_hash.sort
my_hash.display
my_hash.find('einsteina', :name).inspect
# puts restaurants.methods.sort
