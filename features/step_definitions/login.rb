Given("the User logs in with an invalid id") do
    visit(TestSettings.instance.host_url)
    
    fill_in 'username', with: 'invalid@styler.link'
    fill_in 'passwd', with: 'invalid password'
    click_button 'Sign In'
end