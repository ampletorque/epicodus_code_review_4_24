class String
  define_method(:word_in_string_counter) do |word|
    count = self.downcase().split(word.downcase()).count.-(1)
#    binding.pry
  end
end
