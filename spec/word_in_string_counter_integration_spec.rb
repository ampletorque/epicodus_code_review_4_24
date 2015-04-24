require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('Returns the number of times a word occurs in a case-insensitive sentence.', {:type => :feature}) do
  it('Counts number of times a word appears in a sentence.') do
    visit('/')
    fill_in('sentence', :with => "Now is the winter of our discontent Made glorious summer by this sun of York; And all the clouds that lour'd upon our house In the deep bosom of the ocean buried. Now are our brows bound with victorious wreaths; Our bruised arms hung up for monuments; Our stern alarums changed to merry meetings, Our dreadful marches to delightful measures.")
    fill_in('word', with: 'Our')
    click_button('submit')
    expect(page).to have_content('7')
  end
end
