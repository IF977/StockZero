
Given(/^I am on the signup page$/) do
   visit  "/signup"
end

When(/^I press the button Create an account$/) do
    click_button("Create an account")
end

Then(/^I should be my root page$/) do
    visit  '/'
end