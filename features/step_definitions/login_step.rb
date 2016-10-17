Given(/^I am on the login page$/) do
    visit "/login"
 end
 
When(/^I press login button$/) do
     click_button("button_user")
 end
 
 Then(/^I should be on the user login page$/) do
      visit "/user_page"
 end
     