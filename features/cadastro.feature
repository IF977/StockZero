Feature: Fazer Cadastro User
  As a user 
  In order to sign up
  I want to go to sign up user page in the system
  
  Scenario: register
    Given I am on the signup page
    When I press the button Create an account
    Then I should be my root page