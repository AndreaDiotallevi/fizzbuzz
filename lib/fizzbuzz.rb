def fizzbuzz(num)
  if num % 3 == 0 && num % 5 != 0
    "fizz"
  elsif num % 5 == 0 && num % 3 != 0
    "buzz"
  elsif num % 3 == 0 && num % 5 == 0
    "fizzbuzz"
  else
    num
  end
end