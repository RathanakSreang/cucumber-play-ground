class GooglePlusPageObject < PageObject

  def click_google_plus_sign_in_link
    @browser.find_element(:xpath, "//a[text()='Sign in']").click
  end

  def fill_google_plus_email
    sleep 2
    clear_field 'Email'
    fill_field 'Email', @config['google_plus']['email']
  end

  def click_google_plus_next_button
    @browser.find_element(:id, 'next').click
  end

  def fill_google_plus_password
    sleep 2
    clear_field 'Passwd'
    fill_field 'Passwd', @config['google_plus']['password']
  end

  def click_google_plus_sign_in_button
    @browser.find_element(:id, 'signIn').click
  end

  def add_new_google_plus_post
    sleep 2
    @browser.find_element(:xpath, "//span[contains(text(), 'new with you?')]").click
  end

  def write_new_google_plus_post
    sleep 2
    @browser.find_element(:xpath, "//textarea").send_keys @config['google_plus']['message']
  end

  def submit_post_to_google_plus
    sleep 2
    @browser.find_element(:xpath, "//content/span[contains(text(), 'Post')]").click
  end
end
