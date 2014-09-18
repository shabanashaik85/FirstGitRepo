Given(/^I am on the "(.*?)"$/) do |website|
  @browser.goto website
  #@browser.speed = :zippy
  @browser.window.maximize
  #@browser.refresh
end

When(/^I click the first View Details button$/) do
  @browser.button(:value => "View Details", :index => 0).click
end


And(/^I click the first Adopt Me button$/) do
  @browser.button(:value => 'Adopt Me!').click
end

And(/^I click the Adopt Another Puppy button$/) do
 @browser.button(:value => 'Adopt Another Puppy', :class => 'rounded_button').click
end

And(/^I click the second View Details button$/) do
  @browser.button(:value => 'View Details', :index => 1).click
end

And(/^I click the second Adopt Me button$/) do
  @browser.button(:value => 'Adopt Me!').click
  @cart = ShoppingCartPage.new(@browser)
end

Then(/^I should see "(.*?)" as the first name for line item (\d+)$/) do |name, line_item|
  @cart.name_for_line_item(line_item.to_i).should include name
end


And(/^I should see "(.*?)" as the first subtotal for line item (\d+)$/) do |subtotal, line_item|
  @cart.subtotal_for_line_item(line_item.to_i).should == subtotal
end

And(/^I should see "(.*?)" as the second name for line item (\d+)$/) do |name, line_item|
  @cart.name_for_line_item(line_item.to_i).should include name
end

And(/^I should see "(.*?)" as the second subtotal for line item (\d+)$/) do |subtotal, line_item|
  @cart.subtotal_for_line_item(line_item.to_i).should == subtotal
end

And(/^I should see "(.*?)" as the cart totally$/) do |total|
 @cart.cart_total.should == total
 sleep 10
end
