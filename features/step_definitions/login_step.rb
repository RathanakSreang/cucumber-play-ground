Given /^I have opened product page in (.*), shop is (.*)$/ do |region, shop_url|
  @shop = Mall::ShopPage.new(@driver, @config, region)
  @shop.open(shop_url)
end

Then(/^I fill keyword (.*) in shop search box$/) do |keyword|
  @shop.fill_search_keyword(keyword)
end

Then 'click search' do
  @search = @shop.submit_search
end
