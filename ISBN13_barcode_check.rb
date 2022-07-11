def check_ISBN13_barcode(barcode)
  "This function aims to calculate the check digit of an ISBN13 barcode"
  flag = 0
  result = 0
  array = barcode.to_s.split('').map(&:to_i)
  for i in array
    if flag == 0
      result += i
      flag = 1
    else 
      result += i*3
      flag = 0
    end
  end
  last_digit = 10 - result % 10
  array.append(last_digit)
  return array.join.to_i
end

puts check_ISBN13_barcode 978014300723
