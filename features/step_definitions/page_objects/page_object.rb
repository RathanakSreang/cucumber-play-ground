class PageObject
  attr_accessor :driver

  def initialize(driver, config, mall_id)
    @driver = driver
    @config = config
    @domain = @config['domains'][mall_id]
    @mall_id = mall_id
  end

  def self.open(config)
    proxy = ENV['TEST_ENV'] ? config['env'][ENV['TEST_ENV']]['proxy'] : nil
    browser = ENV["TEST_BROWSER"]
    driver = select_browser(proxy, browser)
    driver.manage.timeouts.page_load = 30
    driver.manage.timeouts.implicit_wait = 30
    return driver
  end

  def page_title
    @driver.title
  end

  def save_screen filename
    sleep 1
    @driver.save_screenshot("reports/screenshots/#{filename}_#{@mall_id}.png")
  end

  private

  def self.select_browser(proxy = nil, browser = nil)
    case browser
    when /firefox/
      profile = Selenium::WebDriver::Firefox::Profile.new
      profile.proxy = Selenium::WebDriver::Proxy.new(:http => proxy, :ssl => proxy)
      driver = Selenium::WebDriver.for :firefox, :profile => profile
    else
      client = Selenium::WebDriver::Remote::Http::Default.new
      if proxy.nil?
        driver = Selenium::WebDriver.for :phantomjs, :http_client => client, :args => ["--ignore-ssl-errors=true"]
      else
        client.proxy = Selenium::WebDriver::Proxy.new(:http => proxy)
        driver = Selenium::WebDriver.for :phantomjs, :http_client => client, :args => ["--proxy=#{proxy}", "--ignore-ssl-errors=true"]
      end
    end
    driver
  end
end
