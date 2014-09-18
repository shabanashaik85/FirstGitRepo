require 'watir-webdriver'



Before do
  @browser = Watir::Browser.new :firefox
  @EdwinN ||= EdwinNPage.new(@browser)


end


After do
  @browser.close
end