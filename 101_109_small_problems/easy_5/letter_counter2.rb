# Modify the word_sizes method from the previous exercise to exclude
# non-letters when determining word size. For
# instance, the length of "it's" is 3, not 4.

def word_sizes(str)
  counts = Hash.new(0)
  if str == ""
    return {}
  else
  str.gsub!(/[^0-9A-Za-z\s]/, "").split.each do |word|
    counts[word.size] += 1
  end
end
  counts

end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}