def merge_sort arr
  return arr if arr.length <=1
  m = arr.length / 2
  left = merge_sort(arr[0...m])
  right = merge_sort(arr[m..-1])
  merge(left,right)
end

def merge(left, right)
  result = []
  until left.empty? || right.empty?
    result << (left.first <= right.first ? left.shift : right.shift)
  end
  result + left + right
end

ex = [1,5,8,14,3,0,87,5,48,6,3,20]
puts merge_sort ex