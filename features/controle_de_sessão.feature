Feature: fazer Controle de user_sessions 
  As a admin
  In to control the user session
  I want the user to visit the system this can not visit the products page without being logged in
  
  Scenario: control_session 
    Given the user is on the home page 
    When he presses the products link without signing in
    Then he will be redirected to the login page
    When he fill in "user[email]" with "lff3@cin.ufpe.br"
    And he fill in "user[password]" with "123"
    And he fill in "user[password_confirmation]" with "123"
    When he press login button
    Then only when he is logged in he will visit the products page