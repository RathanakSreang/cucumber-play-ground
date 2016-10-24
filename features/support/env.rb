require 'selenium-webdriver'
require './features/step_definitions/page_objects/page_object.rb'

Before do |scenario|
  @browser = PageObject.new(PageObject.init_browser)
end

After do |sceario|
  @browser.quit
end
