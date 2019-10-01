Given("the User logs in with an invalid id") do
    visit(TestSettings.instance.host_url)
    click_link 'ログイン・新規登録'

    fill_in 'user_email', with: 'invalid@styler.link'
    fill_in 'user_password', with: 'invalid password'
    click_button 'ログイン'
end