
def solution(a)
    # write your code in Ruby 2.2
    d = 1
    factors = 0
    while d ** 2 < n
        factors += 2 if n % d == 0
        d += 1
    end
    factors += 1 if d ** 2 == n
    factors
end
