Feature: Google Search

Scenario: Searching a term will generate results
    Given the user is on google top page
    When searching for "greycastle se"
    Then the first match is "Greycastle - Greycastle"

Scenario: The lucky feature will navigate straight to the first match
    Given the user is on google top page
    When entering "greycastle se"
    And tapping I'm lucky
    Then navigates to "https://www.greycastle.se"