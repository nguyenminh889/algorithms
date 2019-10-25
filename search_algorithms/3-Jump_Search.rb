def jump_search input, jump_size, x
  return 'not found' if x < input.first || x > input.last
  k = 1
  if k * jump_size < input.length
    while x >= input[k * jump_size] do
      k += 1
      break if (k + 1) * jump_size > input.length
    end  
  end
  start_range = (k - 1) * jump_size
  end_range = (k + 1) * jump_size > input.length ? input.length : k * jump_size
  input[start_range...end_range].each_with_index do |value, index|
    return 'found', index if value == x
  end
  return 'not found'
end

input = [1, 2, 4, 5, 6, 7, 8, 9]
x = 4
puts jump_search input, 2, x