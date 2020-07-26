a = 1
res = if a < 5
    "#{a} less than 5"
  elsif a > 5
    "#{a} greater than 5"
  else
    "#{a} equals 5"
  end
puts res
# => "1 less than 5"
