Then("the a {string} with text {string} is displayed") do |element_type, contents|
    page.find(element_type, text: /#{contents}?/i)
end