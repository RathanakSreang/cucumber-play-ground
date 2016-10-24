When(/^I go to "([^"]*)" homepage$/) do |site_name|
  @browser.open(site_name)
  @viblo =  VibloPageObject.new @browser.browser
end

Then(/^I should see page title "([^"]*)"$/) do |page_title|
  expect(@viblo.page_title).to include page_title
end

Then(/^I fill keyword "([^"]*)" in search field$/) do |keyword|
  @viblo.fill_search_keyword(keyword)
end

Then(/^I fill keyword "([^"]*)" in "([^"]*)" search field$/) do |keyword, site_name|
  @viblo.fill_search_keyword(keyword, site_name)
end

Then(/^I take a screenshot "([^"]*)"$/) do |file_name|
  @viblo.save_screen file_name
end

Then 'I click sign in' do
  @viblo.pop_up_sign_in_form
end

Then(/^I fill email "([^"]*)" and password "([^"]*)"$/) do |email, password|
  @viblo.fill_login_form(email, password)
end

Then 'I click login' do
  @viblo.submit_login
end

Then 'I click on search button' do
  @viblo.click_search
end

Then 'I click on search icon'  do
  @viblo.search_icon_click
end

Then 'I press enter key' do
  @viblo.press_enter_on_search_field
end

Then 'I should see Viblo site in the first top result of google search' do
  expect(@viblo.get_first_result).to eq 'https://viblo.asia/vi'
end

Then "I should see Rathanak's articles" do
  expect(@viblo.article_author_of_search_result).to include('Rathanak')
end
