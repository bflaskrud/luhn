module Luhn
  def self.is_valid?(number)
    #WRITE YOUR SOLUTION HERE
  cc_digits = number.to_s.reverse.chars.map(&:to_i)
  check_sum = 0

  cc_digits.each_slice(2) do |odd, even|
    check_sum += odd
    next unless even
    even *= 2

    #even = even.divmod(10).inject(:+) if even > 9
    even = even - 9 if even >= 10 

    check_sum += even
  end

  return check_sum.modulo(10) == 0
  end
end
