Given(/^I am on the login page$/) do
    visit "/login"
 end
 
When(/^I press Log in button$/) do
     click_button("Log in")
 end
 
 Then(/^I should be on the root page$/) do
      visit "/"
 end
     