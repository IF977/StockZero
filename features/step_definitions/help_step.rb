Given(/^the user new is at the beginning of the system$/) do
  visit "/"
end

When(/^he presses the help link without signing in$/) do
   click_on ("Help")
end

Then(/^he will  redirected to the login page$/) do
   visit "/login"
end

When(/^it populates "([^"]*)" with "([^"]*)"$/) do |arg1, arg2|
   @user = User.new(email: "lff3@cin.ufpe", password: '123456', password_confirmation: '123456')
   @user.save
   
end

When(/^he presses the login button$/) do
  click_button ("Login")
end

Then(/^only when it is connected will it visit the help page to watch the video$/) do
   visit "/help"
end