def first_anagram?(string1, string2)
  permutations = string1.split("").permutation.to_a
  permutations.join("").include?(string2)
end 

# p first_anagram?("gizmo", "sally")

def second_anagram?(string1, string2)
  str1 = string1.split("")
  matched = 0
  str1.each do |letter|
    matched += 1 if string2.index(letter) != nil
  end 
  matched == string2.length
end 



def third_anagram?(string1, string2)
  string1.sort == string2.sort
end 

def fourth_anagram?(string1, string2)
  alphabet = ("a".."z").to_a
  string1.split("").map{|el| alphabet.count(el)} == string2.split("").map{|el| alphabet.count(el)}
end 
