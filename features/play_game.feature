Feature: Starting Rock,Paper,Scissors
  In order to play Rock,Paper,Scissors
  As a member of MA marketing team wanting to let of steam
  I want to start a new game of RPS

  Scenario: Homepage
    Given I am on the homepage
    Then I should see "Enter your name"
    And I should see "Start Game" button
    When I enter Player Name
    And I click the "Start Game" button
    Then I should be redirected to the '/new_game' page
