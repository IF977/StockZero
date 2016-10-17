Feature: Fazer Cadastro User
  As a user 
  In order to sign up
  I want to go to sign up user page in the system
  
  Scenario: register
    Given I am on the home page
    When I press the button sign up user now 
    Then I should be on the Sign Up User Page