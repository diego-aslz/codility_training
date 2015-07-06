def solution(a)
    # write your code in Ruby 2.2

    i = 1
    peaks = []
    while i < a.size - 1
        if a[i - 1] < a[i] && a[i] > a[i + 1]
            peaks << i
        end
        i += 1
    end
    return peaks.size if peaks.size < 2

    1.upto(a.size) do |size|
        next if a.size % size != 0
        find = 0
        groups = a.size / size
        ok = true
        peaks.each do |idx|
            if idx / size > find
                ok = false
                break
            end
            find += 1 if idx / size == find
        end
        ok = false if find != groups
        return groups if ok
    end
    0
end
