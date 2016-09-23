require 'selenium-webdriver'
require 'rspec'
require 'yaml'
require './features/step_definitions/page_objecRR/page_object.rb'

Before do |scenario|
  @config = YAML.load_file("config/config.yml")
  @driver = PageObject.open(@config)
end

After do |sceario|
  @driver.quit
end
