Feature: login user
  As a user 
  In order i login
  I want to go to login page in the system
  
  Scenario: Welcome
    Given I am on the login page
    When I press login button
    Then I should be on the Login Page 