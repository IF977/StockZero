Given(/^the user is on the home$/) do
  visit "/"
end

#When(/^he presses the delete button$/) do
   #click_on( "/users/" + user.id, :delete)
  #find(button.btn.btn-primary.btn-save).click
#end

Then(/^it will display and confirm popup$/) do
  page.driver.browser.switch_to.alert.accept 
end

Then(/^only when it is accepted will it visit the user page without the old user$/) do
   visit "/"
end