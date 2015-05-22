def fibs nb
  arr = [0,1]
  (2..nb).each do |i|
    arr << arr[i-1] + arr[i-2]
  end
   arr
end

def fibs_rec nb
  return 0 if nb == 0
  return 1 if nb == 0
  fibs_rec(nb-1) + fibs_rec(nb-2)
end

puts fibs 10
puts fibs_rec 10

