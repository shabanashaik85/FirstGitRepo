Feature: Google

      @google
  Scenario Outline: search google
    Given I am on google page
    When I search "<text>"
    Then I should get "<text>"
    Examples:
    |text|
    | tea|
    |coffee  |


