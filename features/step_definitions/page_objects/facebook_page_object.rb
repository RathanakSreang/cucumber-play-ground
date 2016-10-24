class FacebookPageObject < PageObject
  def fill_facebook_email
    clear_field 'email'
    fill_field 'email', @config['facebook']['email']
  end

  def fill_facebook_password
    clear_field 'pass'
    fill_field 'pass', @config['facebook']['password']
  end

  def click_login
    @browser.find_element(:id, 'loginbutton').click
  end

  def write_new_post
    sleep 2
    @browser.find_element(:xpath, '//textarea').send_keys  @config['google_plus']['message']
  end

  def submit_new_post
    sleep 2
    @browser.find_element(:xpath, "//span[contains(text(), 'Post')]").click
  end
end
