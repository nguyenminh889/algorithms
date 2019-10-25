def binary_search input, first_point, end_point, x
  if first_point >= end_point
    input[first_point] == x ? (return true, first_point) : (return 'not found')
  else
    middle_point = (first_point + end_point) % 2 == 0 ? (first_point + end_point) / 2 : (first_point + end_point + 1) / 2
    if input[middle_point] == x
      return true, middle_point
    elsif input[middle_point] > x
      return binary_search input, first_point, middle_point - 1, x
    else
      return binary_search input, middle_point + 1, end_point, x
    end
  end
end

input = [1,2,3,4,5,6,7,8,9]
x = 12
puts binary_search input, 0, input.length - 1, x