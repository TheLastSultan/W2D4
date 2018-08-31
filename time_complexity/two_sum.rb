def two_sum(arr,target)
  arr.length.times do |i|
    arr.length.times do |j|
      next if i == j 
      return [arr[i],arr[j]] if arr[i] + arr[j] == target
    end
  end
  false
end
#n ^ 2

arr = (-150..100).to_a
p two_sum(arr,0)

