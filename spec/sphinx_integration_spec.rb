# require 'capybara/rspec'
# require './app'
#
# Capybara.app = Sinatra::Application
# set(:show_exceptions, false)
#
# describe('template', {:type => :feature}) do
#   it("adds two numbers together") do
#     visit('/')
#     fill_in('num_1', :with => '5')
#     fill_in('num_2', :with => '6')
#     click_button('Add them')
#     expect(page).to have_content('The sum is 11')
#   end
# end
