
Then("a list of products is displayed") do
    expect(page).to have_content('Item Ranking')
    expect(page).to have_css('.box-item-ranking__list-item')
end

Then(/the current category is (MEN|WOMEN)/) do |category|
    selected_category = find("a.gnavi-top-desktop__gender-link-item[data-is-selected='true']")
    expect(selected_category.text).to eq(category)
end