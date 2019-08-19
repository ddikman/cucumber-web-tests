Feature: Top page

Scenario: User can see various things on top page
    Given the User navigates to top page
    Then the current category is MEN
    And a list of products is displayed