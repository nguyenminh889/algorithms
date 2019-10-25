def interpolation_search input, l, r, x
  if l <= r
    m = l + (r - l) * (x - input[l]) / (input[r] - input[l])
    m = m.to_i
    if input[m] == x
      return m
    elsif input[m] > x
      return interpolation_search input, l, m - 1, x
    else
      return interpolation_search input, m + 1, r, x
    end
  end
  return -1
end

input = [1,2,3,4,5,6,7,8,9]
x = 3
puts interpolation_search input, 0, input.length - 1, x