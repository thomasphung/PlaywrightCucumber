# Behavior-Driven Development/Testing Demo
# 2024-06-28

# Feature files are themed around a program feature that the user can do
# A scenario outlines how a user may navigate the program to make use of that feature
# A step provides a semantic mapping to function
#   Steps usually follow a "Given-When-Then" pattern, paralleling unit test ideas of a pre-condition, action, and post-condition
# A "feature" has a one-to-many relationship with "scenarios"

# Cucumber framework is flexible to e2e testing, UI testing, API testing
# Actual test runner is Playwright

@Google
Feature: Google Search Bar

@smoke
Scenario: Searching Google For Search Term
    Given I am at google
    When I input search term as <search_term>
    When I click the google search button
    Then I should see <search_term> h3 header with text <header_text>

    Examples:
    | search_term    | header_text |
    | moon           | moon        |
    | banana         | banana      |
