Given(/^I am on the homeh page$/) do
    visit "/"
 end
 
When(/^I press Login button$/) do
     click_on ("Login")
 end
 
 Then(/^I should enter the users page$/) do
      visit "/users"
 end
     