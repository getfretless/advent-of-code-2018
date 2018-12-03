require_relative "./miles_input"

twos = 0
threes = 0
INPUT.each do |input|
  counts = input.chars.reduce(Hash.new(0)) do |hsh, char|
    hsh[char] += 1
    hsh
  end
  twos += 1 if counts.values.any? { |val| val == 2 }
  threes += 1 if counts.values.any? { |val| val == 3 }
end

puts twos * threes
