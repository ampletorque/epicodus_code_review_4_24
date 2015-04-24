require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('returns the number of times a word occurs in a case-insensitive sentence.', {:type => :feature}) do
  it('counts number of words in sentence') do
    visit('/')
    fill_in('sentence', :with => '')
    fill_in('word', with: 'Our')
    click_button('submit')
    expect(page).to have_content('7')
  end
end
