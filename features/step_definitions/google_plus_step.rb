When(/^I visit google plus homepage$/) do
  @browser.open('google_plus')
  @google_plus =  GooglePlusPageObject.new @browser.browser
end

When(/^I click on google plus sign link$/) do
  @google_plus.click_google_plus_sign_in_link
end

Then(/^I fill my google plus email$/) do
  @google_plus.fill_google_plus_email
end

Then(/^I click on next button$/) do
  @google_plus.click_google_plus_next_button
end

Then(/^I fill my google plus password$/) do
  @google_plus.fill_google_plus_password
end

Then(/^I click sign in to my google plus account$/) do
  @google_plus.click_google_plus_sign_in_button
end

Then(/^I click on add new post on google plus$/) do
  @google_plus.add_new_google_plus_post
end

Then(/^I write my new google plus post$/) do
  @google_plus.write_new_google_plus_post
end

Then(/^I click submit my post on google plus$/) do
  @google_plus.submit_post_to_google_plus
end

Then(/^I take a google plus screenshot "([^"]*)"$/) do |file_name|
  @google_plus.save_screen file_name
end
