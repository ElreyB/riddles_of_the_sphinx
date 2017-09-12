require 'capybara/rspec'
require './app'

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('sphinx', {:type => :feature}) do
  it("shows result of answer") do
    visit('/')
    fill_in('answer', :with => "a flower")
    click_button('Answer')
    expect(page).to have_content("You have answered correctly!!!!!")
  end

  it("shows result of answer") do
    visit('/')
    fill_in('answer', :with => "A Bike")
    click_button('Answer')
    expect(page).to have_content("You have answered incorrectly!!!")
  end
end
