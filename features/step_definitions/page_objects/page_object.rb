require 'uri'
require 'yaml'

class PageObject
  attr_accessor :browser, :config
  SITE_URL ||= {
    google: 'https://www.google.com',
    viblo: 'https://viblo.asia',
    google_plus: 'https://plus.google.com',
    facebook: 'https://www.facebook.com/'
  }

  def initialize(browser)
    @config = YAML.load_file("config/config.yml")
    @browser = browser
  end

  def open(site_name)
    @browser.navigate.to SITE_URL[site_name.to_sym]
  end

  def page_title
    @browser.title
  end

  def save_screen filename
    sleep 5
    @browser.save_screenshot("reports/screenshots/#{filename}.png")
  end

  def fill_field field_id, value
    @browser.find_element(:id, field_id).send_keys value
  end

  def clear_field field_id
    @browser.find_element(:id, field_id).clear
  end

  def quit
    @browser.quit
  end

  class << self
    def init_browser
      Selenium::WebDriver.for :firefox
    end
  end
end
