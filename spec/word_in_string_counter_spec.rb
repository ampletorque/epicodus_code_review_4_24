require('rspec')
require('pry')
require('word_in_string_counter')

describe('String#word_in_string_counter') do

  it("returns the number of times a case-sensitive word appears in a string.") do
    expect("Now is the winter of our discontent Made glorious summer by this sun of York; And all the clouds that lour'd upon our house In the deep bosom of the ocean buried. Now are our brows bound with victorious wreaths; Our bruised arms hung up for monuments; Our stern alarums changed to merry meetings, Our dreadful marches to delightful measures.".word_in_string_counter("Now")).to(eq(2))
  end

  it("returns the number of times a case-insensitive word appears in a string.") do
    expect("Now is the winter of our discontent Made glorious summer by this sun of York; And all the clouds that lour'd upon our house In the deep bosom of the ocean buried. Now are our brows bound with victorious wreaths; Our bruised arms hung up for monuments; Our stern alarums changed to merry meetings, Our dreadful marches to delightful measures.".word_in_string_counter("Our")).to(eq(7))
  end

end
