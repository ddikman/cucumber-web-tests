require 'capybara/cucumber'

Given /the User navigates to top page/ do
    visit('https://stg.facy.jp/')
    click_link 'ログイン・新規登録'

    fill_in 'user_email', with: ENV['TEST_USERNAME']
    fill_in 'user_password', with: ENV['TEST_PASSWORD']
    click_button 'ログイン'
end