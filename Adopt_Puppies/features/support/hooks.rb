


Before do
  @browser = Watir::Browser.new :firefox
  #@browser.speed = :zippy
end




After do
  @browser.close
end