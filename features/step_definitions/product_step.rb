Given(/^I the users page$/) do
    visit "/users"
 end
 
When(/^By pressing the product button$/) do
     click_on ("Produtos")
 end
 
 Then(/^I must enter the product registration page$/) do
      visit "/products/new"
 end
     