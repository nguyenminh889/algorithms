start = Time.now
def linear_search input, x
  input.each_with_index do |item, index|
    item == x ? (return index) : ''
  end
  -1
end

input = [1,4,2,6,8,3,8,5,0,8]
x = 6
output = linear_search input, x
puts "Input: \n   Array: #{input}\n   X: #{x}"
puts "Output: #{output}"
finish = Time.now
puts "Execution time: #{(finish - start).to_f}"
