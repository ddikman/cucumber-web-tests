require 'capybara/cucumber'
require_relative '../support/test_settings'

Given("the user is on google top page") do
    visit("https://google.com")
end

Then("navigates to {string}") do |url|
    expect(page).to have_current_path(url)
end