def first_anagram?(string1, string2)
  permutations = string1.split("").permutation.to_a
  permutations.join("").include?(string2)
end 

# p first_anagram?("gizmo", "sally")

def second_anagram?(string1, string2)
  str1 = string1.split("")
  str1.each do |letter| 
    idx = string2.index(letter) 
    str1.delete(letter) unless idx.nil?
  end 
  print str1
end 

p second_anagram?("elvis","lives")