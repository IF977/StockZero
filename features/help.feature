Feature: visit help page of delete questions
  As a user 
  In to control the user session
I want the user to visit the system, if you doubt it, visit the help pages

Scenario: help
Given the user new is at the beginning of the system
When he presses the help link without signing in
Then he will  redirected to the login page
When it populates "user [email]" with "lff3@cin.ufpe.br"
And it populates "user [password]" with "123456"
And it populates "user [password_confirmation]" with "123456"
When he presses the login button
Then only when it is connected will it visit the help page to watch the video