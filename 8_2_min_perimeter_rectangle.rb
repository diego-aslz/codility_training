# you can use puts for debugging purposes, e.g.
# puts "this is a debug message"

def solution(n)
    # write your code in Ruby 2.2
    a = Math.sqrt(n).floor
    a -= 1 while n % a != 0
    b = n / a
    (a + b) * 2
end
