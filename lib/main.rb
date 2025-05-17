# frozen_string_literal: true

puts "Current file: #{File.exist?(__FILE__)}"
puts __FILE__
puts "Current dir: #{__dir__}"

def write(filename)
  file = File.new(filename, 'w')

  file.puts 'Meat'
  file.puts 'Salmon'
  file.puts 'Broccoli'
  file.puts 'Lettuce'
end

def read(filename)
  File.open(filename, 'r') do |file|
    file.each_line do |line|
      puts "Content: #{line.chomp}"
    end
  end
end

# file = File.read('grocery_list.txt')
# puts file
#
# puts File.exist?('grocery_list.txt')
# puts File.ctime('grocery_list.txt')

name = 'Horeja'
puts name.include?('a')

def <<(array, new_number)
  array.unshift(new_number)
end

array = [1, 2, 3, 4]

print self.<<(array, 0)

