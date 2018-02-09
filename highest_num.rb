#Find the Highest and Lowest Number Brain Teaser 
require 'pry'
def menu
  input
  puts "What would you like for me to find?"
  puts "1) Highest Number "
  puts "2) Lowest Number"
  puts "3) Quit"
  option = gets.to_i
  case option
    when 1 
      highest_num
    when 2
      lowest_num
    when 3
      exit
    else 
      puts "invalid option"
      menu
  end
end


def input
  puts "I can find the highest or lowest number in a list of numbers that you give me."
  numbers = gets.strip
  @num_arr = numbers.split(',').map(&:to_i)
end

def highest_num
  result = @num_arr.first
  @num_arr.each do |num|
    if num > result
      result = num
    end
  end
  puts "The highest number is #{result}"
  menu
end

def lowest_num
  result = @num_arr.first
  @num_arr.each do |num|
    if num < result
     result = num
    end
  end
  puts "The lowest number is #{result}"
  menu
end

menu
