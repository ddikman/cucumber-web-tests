Feature: Top page

Scenario: User can see various things on top page
    Given the User navigates to top page
    Then a dashboard is displayed

Scenario: Login with invalid id
    Given the User logs in with an invalid id
    Then the a "strong" with text "Warning" is displayed