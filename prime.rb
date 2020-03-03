require 'benchmark'
# Add  code here!
def prime?(number)

  if number <= 3
    return number > 1
  end

  if (2..number - 1).any? { |i| number % i == 0 }
    return false
  end

  return true
end

puts Benchmark.measure { prime?(1425783) }
