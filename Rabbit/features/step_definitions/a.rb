Given(/^that I am on the Ruby survey web site "(.*?)"$/) do |website|
  @browser.goto website
   @browser.button(:value, " Buy Now ").click_no_wait
  sleep 2
  @browser.alert.ok
end
