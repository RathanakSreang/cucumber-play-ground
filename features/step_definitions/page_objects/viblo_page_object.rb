require 'uri'

class VibloPageObject
  attr_accessor :browser
  SITE_URL = {
    google: 'https://www.google.com',
    viblo: 'https://viblo.asia'
  }
  def initialize
    @browser = Selenium::WebDriver.for :firefox
  end

  def open(site_name)
    @browser.navigate.to SITE_URL[site_name.to_sym]
  end

  def page_title
    @browser.title
  end

  def fill_search_keyword(keyword, site_name)
    sleep 10
    if site_name == 'google'
      @browser.find_element(:name, 'q').send_keys(:backspace, keyword)
    else
      @browser.find_element(:id, 'search-box').send_keys(:backspace, keyword)
    end
  end

  def click_search
    @browser.find_element(:name, 'btnG').click
  end

  def get_first_result
    sleep 5
    @browser.find_elements(:class_name, '_Rm').first.text
  end

  def pop_up_sign_in_form
    @browser.find_elements(:class, 'btn-login')[1].click
  end

  def fill_login_form(email, password)
    @browser.find_element(:name, 'username').send_keys(:backspace, email)
    @browser.find_element(:name, 'password').send_keys(:backspace, password)
  end

  def submit_login
    @browser.find_elements(:class, 'btn-submit-login')[0].click
  end

  def search_icon_click
    sleep 10
    @browser.find_element(:class, 'search-icon').click
  end

  def press_enter_on_search_field
    @browser.find_element(:id, 'search-box').submit
  end

  def article_author_of_search_result
    browser.find_elements(:class, 'author')[0].text
  end

  def save_screen filename
    sleep 1
    @browser.save_screenshot("reports/screenshots/#{filename}.png")
  end

  def quit
    @browser.quit
  end
end
