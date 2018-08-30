

# Nested complexity is N^2 
def bad_my_min(list)
  base_min = list.first
  list.each do |el|
    min = el
    list.each do |el2|
      next if el2 < min  
    end
    base_min = min if min < base_min
  end
  base_min
end

# n 
def mediocre_my_min(list)
  base_min = list.first
  list.each do |el|
    base_min = el if base_min > el 
  end
  base_min
end

# n log n
def my_min(list)
  list.sort.last
end


#  n^3. 
def largest_sub_sum(list)  
  sub_arr = []
  list.length.times do |i|
    list.length.times do |j|
      sub_arr << list[i..j] unless list[i..j] == []
    end 
  end 
  sub_arr
  list_sums = sub_arr.map {|list| list.sum} 
  max = list_sums.max 
end 

def pain_in_my_ass(list)
  max = list.first
  current = 0
  list.each_with_index do |el,i|
    if list[i] < 0
      max = current if current > max
      current = 0
    else
      current += list[i]
    end 
  end
  max = current if current > max
  max
end
  
p pain_in_my_ass([5,3,-7])