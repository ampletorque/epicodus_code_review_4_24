require('rspec')
require('pry')
require('word_in_string_counter')

describe('String#word_in_string_counter') do

  it("Returns the number of times a case-sensitive word appears in a string.") do
    expect("Now is the winter of our discontent Made glorious summer by this sun of York; And all the clouds that lour'd upon our house In the deep bosom of the ocean buried. Now are our brows bound with victorious wreaths; Our bruised arms hung up for monuments; Our stern alarums changed to merry meetings, Our dreadful marches to delightful measures.".word_in_string_counter("Now")).to(eq(2))
  end

  it("Returns the number of times a case-insensitive word appears in a string.") do
    expect("Now is the winter of our discontent Made glorious summer by this sun of York; And all the clouds that lour'd upon our house In the deep bosom of the ocean buried. Now are our brows bound with victorious wreaths; Our bruised arms hung up for monuments; Our stern alarums changed to merry meetings, Our dreadful marches to delightful measures.".word_in_string_counter("Our")).to(eq(7))
  end

  it("Returns the number of times a word occurs in a short string.") do
    expect("hello hello there".word_in_string_counter("hello")).to(eq(2))
  end

  it("Returns the number of times a word at the end of a sentence occurs in a short string.") do
    expect("hello hello there".word_in_string_counter("there")).to(eq(1))
  end

end
