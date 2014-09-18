
Given(/^I am on google page$/) do
#   @EdwinN.open_site
  @browser = Watir::Browser.new :firefox
  @browser.goto("www.google.com")

end

When(/^I search "(.*?)"$/) do |text|

end

Then(/^I should get "(.*?)"$/) do |text|

end
