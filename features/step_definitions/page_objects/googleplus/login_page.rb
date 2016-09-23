require 'uri'
require 'erb'

module Mall
  class ShopPage < PageObject
    def open(shop_url)
      url = URI.join(ERB.new(@config['env']['mall'][ENV['TEST_ENV']]['url']).result(binding),"shop/#{shop_url}")
      @driver.navigate.to(url)
    end

    def fill_search_keyword(keyword)
      @driver.find_element(:name, 'shop_k').send_keys(:backspace, keyword)
    end

    def submit_search
      @driver.find_element(:id, 'auto_shop_search').click
      Mall::SearchPage.new(@driver, @config, @mall_id)
    end
  end
end