Given(/^that I am on the owner web site "(.*?)"$/) do |website|
@browser.goto website
#@browser.goto 'https://login.yahoo.com/?.src=ym&.intl=uk&.lang=en-GB&.done=http://mail.yahoo.com'
#@browser.link(:text => /hsrd.yahoo.com/).click
#@browser.link(:text => /partial/i).click
  sleep (2)
  @browser.window.maximize
  sleep (4)
  @browser.link(:css, '<em title="Sign in" class="strong y-link-1 social-enabled-txt ">Sign in</em>').click
 #@browser.text.should include ("https://login.yahoo.com/?.src=ym&.intl=uk&.lang=en-GB&.done=http://mail.yahoo.com")
end

                                                                      When(/^the user clicks on the Mail$/) do
                                     pending # express the regexp above with the code you wish you had
                                   end



                                                                      And(/^completes his user ID$/) do
                                     pending # express the regexp above with the code you wish you had
                                   end



                                                                      And(/^completes his password$/) do
                                     pending # express the regexp above with the code you wish you had
                                   end



                                                                      And(/^checks the options for always remain sign in$/) do
                                     pending # express the regexp above with the code you wish you had
                                   end



                                                                      And(/^clicks on the sign\-in option$/) do
                                     pending # express the regexp above with the code you wish you had
                                   end



                                                                      And(/^clicks continue button$/) do
                                     pending # express the regexp above with the code you wish you had
                                   end



                                                                      And(/^clicks on skip for now$/) do
                                     pending # express the regexp above with the code you wish you had
                                   end



                                                                      And(/^clicks on skip for now$/) do
                                     pending # express the regexp above with the code you wish you had
                                   end



                                                                      Then(/^the user should see search mail option$/) do
                                     pending # express the regexp above with the code you wish you had
                                   end