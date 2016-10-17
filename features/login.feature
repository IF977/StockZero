Feature: login user
  As a user 
  In order i login
  I want to go to login page in the system
  
  Scenario: Login
    Given I am on the login page
    When I press Log in button
    Then I should be on the root page