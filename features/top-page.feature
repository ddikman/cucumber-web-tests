Feature: Top page

Scenario: User can see various things on top page
    Given the User navigates to top page
    Then the current category is MEN
    And a list of products is displayed

Scenario: Login with invalid id
    Given the User logs in with an invalid id
    Then the a "div" with text "メールアドレスまたはパスワードが無効です" is displayed