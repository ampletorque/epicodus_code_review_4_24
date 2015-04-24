class String
  define_method(:word_in_string_counter) do |word|
#    count = self.downcase().split(word.downcase()).count.-(1)
     count = self.downcase().scan(word.downcase()).count

#    binding.pry
  end
end

# "hello hello there"
# " ", " there"
