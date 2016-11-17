Given(/^the user is on the home page$/) do
  visit "/"
end

When(/^he presses the products link without signing in$/) do
   click_on ("Produtos")
end

Then(/^he will be redirected to the login page$/) do
   visit "/login"
end

When(/^he fill in "([^"]*)" with "([^"]*)"$/) do |arg1, arg2|
   @user = User.new(email: "lff3@cin.ufpe", password: '123', password_confirmation: '123')
   @user.save
   
end

When(/^he press login button$/) do
  click_button ("Login")
end

Then(/^only when he is logged in he will visit the products page$/) do
   visit "/products"
end