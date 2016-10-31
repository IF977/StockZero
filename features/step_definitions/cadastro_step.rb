
Given(/^I am on the home page$/) do
   visit  "/"
end

When(/^I press the button Register$/) do
    click_on ("Register")
end

Then(/^I must enter the registration page$/) do
    visit  '/users/new'
end