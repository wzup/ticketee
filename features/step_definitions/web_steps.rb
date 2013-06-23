# coding: utf-8

Given(/^(?:I) am on (.+)$/) do |page_name|
  visit(path_to(page_name))
end

When(/^I follow (\"New Project\")$/) do |page_name|
  visit(path_to(page_name))
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |arg1, arg2|
  fill_in(arg1, :with => arg2)
end

When(/^I press "(.*?)"$/) do |arg1|
  click_button(arg1)
end

Then(/^I should see "(.*?)"$/) do |arg1|
  # page.should have_content(arg1)
  find('#info').should(have_content(arg1))
end

