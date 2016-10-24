When(/^I visit facebook homepage$/) do
  @browser.open('facebook')
  @facebook = FacebookPageObject.new @browser.browser
end

When(/^I fill my facebook email$/) do
  @facebook.fill_facebook_email
end

When(/^I fill my facebook password$/) do
  @facebook.fill_facebook_password
end

When(/^I click login to facebook$/) do
  @facebook.click_login
end

When(/^I write my new post on facebook$/) do
  @facebook.write_new_post
end

Then(/^I click submit my post on facebook$/) do
  @facebook.submit_new_post
end

Then(/^I take a facebook screenshot "([^"]*)"$/) do |file_name|
  @facebook.save_screen file_name
end
