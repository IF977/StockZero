
Given(/^I am on the home page$/) do
   visit  "/"
end

When(/^I press the button sign up user now$/) do
    click_button("sign up")
end

Then(/^I should be on the Sign Up User Page$/) do
    visit  '/new_user_path'
end