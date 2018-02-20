# Write a method that will take
# a short line of text, and print it within a box.

def print_in_box(str)
  length = str.size
  print "+-#{"-" * length}-+\n"
  print "| #{" " * length} |\n"
  print "| #{str} |\n"
  print "| #{" " * length} |\n"
  print "+-#{"-" * length}-+\n"
end

print_in_box('To boldly go where no one has gone before.')

print_in_box('')
