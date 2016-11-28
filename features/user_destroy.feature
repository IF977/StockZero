Feature: user exclusion confirmation
As an administrator
To check the user exclusion confirmation popup
I want the user to visit the system, this when I click the delete button to pop up the check popup

Scenario: Exclude confirmation
Given the user is on the home 
When he presses the delete button
Then it will display and confirm popup
Then only when it is accepted will it visit the user page without the old user