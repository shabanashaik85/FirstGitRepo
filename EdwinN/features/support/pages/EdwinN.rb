class EdwinNPage

  def initialize(browser)
    @browser = browser
  end

  def open_site
    @browser.goto("www.google.com")
  end

end