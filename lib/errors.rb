# frozen_string_literal: true

begin
  puts 1 / 0
rescue ZeroDivisionError => e
  puts "#{e.class}: #{e.message}"
end
