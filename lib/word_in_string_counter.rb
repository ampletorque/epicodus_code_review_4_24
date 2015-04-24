class String
  define_method(:word_in_string_counter) do |word|
     #old code fails edge case of word-as-end-of-string:    count = self.downcase().split(word.downcase()).count.-(1)
     count = self.downcase().scan(word.downcase()).count
  end
end
