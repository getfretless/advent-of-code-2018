require_relative "../part-1/miles_input"

def differ_once_at_same_pos?(str1, str2)
  str1.chars.each_with_index.reduce(0) do |count, (char, index)|
    count += 1 if str2.chars[index] != char
    count
  end == 1
end

result = INPUT.map do |input|
  samesies = INPUT.detect do |input2|
    differ_once_at_same_pos?(input, input2)
  end

  unless samesies.nil?
    common = samesies.chars.select.with_index { |char, index| input.chars[index] == char }.join
    break(common)
  end
end

puts result
