#blocks = {B:O,   X:K,   D:Q,   C:P,   N:A,
#G:T,   R:E,   F:S,   J:W,   H:U,
#V:I,   L:Y,   Z:M}






def block_word?(word)
  down = word.downcase
  indexArray = []
  letter1 = ["b", "x", "d", "c", "n", "g", "r", "f", "j", "h", "v", "l", "z"]
  letter2 = ["o", "k", "q", "p", "a", "t", "e", "s", "w", "u", "i", "y", "m"]
  
  letter1.each_with_index do |element, index|
      if down.include?(element)
        indexArray[index] = 1
      else
        indexArray[index] = 0
      end
  end
  
  letter2.each_with_index do |element, index|
      if down.include?(element)
        indexArray[index] += 1
      end
  end
  
!indexArray.any? {|x| x > 1}
  
end



puts block_word?('BATCH') == true
puts block_word?('BUTCH') == false
puts block_word?('jest') == true