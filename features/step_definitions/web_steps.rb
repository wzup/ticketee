# coding: utf-8

Given(/^(?:I) am on (.+)$/) do |page_name|
  visit(path_to(page_name))
end

# When(/^I follow (\"New Project\")$/) do |page_name|
#   visit(path_to(page_name))
# end
# "([A-Za-z\!\#\.0-9\s*]*?)"
# 
#   Scenario: Creating a project
#   
When(/^I fill in "(.*?)" with "(.*?)"$/) do |arg1, arg2|
  # puts "#{page.html.inspect}"
  # puts page.html
  fill_in(arg1, :with => arg2)
end

When(/^I press "(.*?)"$/) do |arg1|
  click_on(arg1)
end

Then(/^I should see "(.*?)"$/) do |*args|
  puts "#{page.html}"
  page.should have_content(args[0])
  # puts "\n\n"
  # find('#info').should(have_content(arg1))
  # puts "#{page.html.inspect}\n"
  # find('#info')
end

Then(/^I should be on the project page for "(.*?)"$/) do |arg1|
  # current_path.should == project_path(@project)
  path_to(arg1)
end

Then(/^I should see "(.*?)" title$/) do |arg1|

  # find(:xpath, '//title[0]').should(have_content(arg1))
  page.has_title?(arg1)
  expect(page).to have_title(arg1)
  # page.should have_xpath("//title", :text => arg1)
end


# Then(/^I should see "(.*?)" title$/) do |arg1|
#   # page.all('title')[0].should(have_content(arg1))
#   # page.should have_content(arg1)
# end