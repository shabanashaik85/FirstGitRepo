Feature: Yahoo Project



#  Background:
#    Given that I am on the owner web site "www.yahoo.com"


  Scenario: Login unto the yahoo account to check mail

    When the user clicks on the Mail
    And completes his user ID
    And completes his password
    And checks the options for always remain sign in
    And clicks on the sign-in option
    And clicks continue button
    And clicks on skip for now
    And clicks on skip for now
    Then the user should see search mail option

  Scenario: Completing Ruby survey form

    When I complete the question Are you a big ruby fan
    And I complete the Tell me your story on getting started with Ruby
    And I answer Are you familiar with Rails
    And I complete What's your favourite Ruby Evangelist
    And check the box for all the things you like about Ruby
    And I select How long are you using Ruby
    And Upload my document
    And I click submit
    Then I should see Ruby on my Browser title

    @tea
    Scenario: open url
      Given I am on google.co.uk
      When I search for Tea
      Then I should see the word tea


