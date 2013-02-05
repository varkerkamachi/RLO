# doctest: reverse_word_order( 'This is my string' )
# >> reverse_word_order( 'This is my string' )
# => "string my is This"
def reverse_word_order( s )
  print arr = s.split(' ').reverse.join(' ')
end

reverse_word_order('This is my string')

