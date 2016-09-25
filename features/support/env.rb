require 'selenium-webdriver'
require './features/step_definitions/page_objects/viblo_page_object.rb'

Before do |scenario|
  @browser = VibloPageObject.new
end

After do |sceario|
  @browser.quit
end
