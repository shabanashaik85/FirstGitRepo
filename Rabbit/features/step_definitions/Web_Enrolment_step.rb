
Given(/^that I am on the Ruby survey web site "(.*?)"$/) do |website|
  @browser.goto website
  # current_win_size = @browser.window.size
  # @browser.window.maximize
  # sleep 1
  browser.window(:value => " Buy Now ").use do
    browser.button(:id => "close").click
  end
  #@browser.button(:value, " Buy Now ").click_no_wait
  sleep 2
  #@browser.alert.ok

#  @browser.window.resize_to(current_win_size[0], current_win_size[1])


end


When(/^I complete the question Are you a big ruby fan$/) do
     @browser.text_field(:id =>'my_text_field').set 'yes boss'
 end


 And(/^I complete the Tell me your story on getting started with Ruby$/) do
   @browser.textarea(:id =>'a_text_area').set 'because i was dreaming about ruby all the time boss'
 end

 And(/^I answer Are you familiar with Rails$/) do
   @browser.radio(:id =>'familiar_rails_1').click
  end

 And(/^I complete What's your favourite Ruby Evangelist$/) do
   @browser.text_field(:id =>'favorite_1').set('EDWIN')
   @browser.text_field(:id =>'favorite_2').set('THE BOSS')
  end



  And(/^check the box for all the things you like about Ruby$/) do
    @browser.checkbox(:id => 'element_14_1').set
    @browser.checkbox(:id => 'element_14_2').set
    @browser.checkbox(:id => 'element_14_3').set

  end


   And(/^I select How long are you using Ruby$/) do
     @browser.select_list(:id =>'usage').select_value('3')


     end


 And(/^Upload my document$/) do
   @browser.file_field.set 'C:\Users\EDWIN\Downloads\Waterfall.ppt'
   current_win_size = @browser.window.size
   @browser.window.maximize
   sleep 1
   #@browser.window.resize_to(current_win_size[0], current_win_size[1])
   sleep 4
 end

  And(/^I click submit$/) do
    @browser.button(:text =>'Submit').click
    sleep (2)
  end


  Then(/^I should see Ruby on my Browser title$/) do
    current_win_size = @browser.window.size
    @browser.window.maximize
    sleep 1
    @browser.window.resize_to(current_win_size[0], current_win_size[1])
   #@browser.text.include? 'Ruby'
   fail 'You have scripted absolute crap' unless @browser.title.include? 'Ruby'
  end