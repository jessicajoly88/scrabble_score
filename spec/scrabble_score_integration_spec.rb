require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)


describe('the scrabble score path', {:type => :feature}) do
  it('processes the user string and returns value of scrabble score') do
    visit('/')
    fill_in('score', :with => 'cats')
    click_button('Send')
    expect(page).to have_content('6')
save_and_open_page      
  end
end
