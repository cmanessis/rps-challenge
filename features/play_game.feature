Feature: Playing Rock,Paper,Scissors
  In order to play Rock,Paper,Scissors
  As a member of MA marketing team wanting to let of steam
  I want to start a new game of RPS

  Scenario: Starting Game
    Given I am on the homepage
    Then I should see "Enter your name"
    And I should see "Start Game" button
    When I enter Player Name with "Chris"
    And I click the "Start Game" button
    Then I should be redirected to the new game page
    And I should see "Welcome Chris"

  Scenario: Seeing player choices
    Given I am on the new game page
    Then I should see "Welcome Chris"
    And I should see "Make your choice"
    And I should see a "Rock" button
    And I should see a "Paper" button
    And I should see a "Scissors" button

  Scenario: Website recognizes my choices
    Given I am on the new game page
    When I click the "Rock" button
    Then I should see "You chose rock"
    When I click the "paper" button
    Then I should see "you chose paper"
    When I click the "Scissors" button
    Then I should see "you chose scissors"

  #Scenario: Seeing CPU choices
  #  Given I am on the new game page
  #  When CPU chooses "Rock"
  #  Then I should see "CPU chose rock"
  #  When CPU chooses "Paper"
  #  Then I should see "CPU chose paper"
  #  When CPU chooses "Scissors"
  #  Then I should see "CPU chose Scissors"
