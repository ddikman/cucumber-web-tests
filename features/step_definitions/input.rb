When("searching for {string}") do |keyword|
    steps %{ 
        When entering "#{keyword}"
        And tapping search
     }
end

Then("the first match is {string}") do |title|
    expect(find(:css, '#search div h3', :match => :first).text).to eq(title)
end

When("tapping search") do
    click_button('btnK')
end

When("entering {string}") do |keyword|
    fill_in('q', :with => keyword)
end

When("tapping I'm lucky") do
    click_button('btnI')
end