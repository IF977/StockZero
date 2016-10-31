Given(/^I am on the login page$/) do
    visit "/login"
 end
 
When(/^I press Login button$/) do
     click_button ("Login")
 end
 
 Then(/^I should enter the user administration panel$/) do
      visit "/users"
 end
     