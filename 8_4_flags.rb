# https://codility.com/demo/results/demoHHAJHP-GAT/
# 87 / 100
def solution(a)
    i = 1
    peaks = []
    while i < a.size - 1
        if a[i - 1] < a[i] && a[i] > a[i + 1]
            peaks << i
        end
        i += 1
    end
    return peaks.size if peaks.size < 2

    [Math.sqrt(a.size).floor, peaks.size].min.downto(2) do |flags|
        skips = peaks.size - flags
        lf = peaks.first
        i = 1
        in_place = 1
        while skips >= 0 && in_place < flags
            if peaks[i] - lf < flags
                skips -= 1
            else
                lf = peaks[i]
                in_place += 1
            end
            i += 1
        end
        return flags if skips >= 0 && in_place == flags
    end
    0
end
