require_relative "./miles_input"

sum_counts = Hash.new(0)
sum = 0
counter = 0
while true
  input = INPUT[counter]
  sum_counts[sum] += 1
  break(sum) if sum_counts[sum] > 1
  sum += input
  counter += 1
  counter = 0 if counter >= INPUT.size
end

puts sum
