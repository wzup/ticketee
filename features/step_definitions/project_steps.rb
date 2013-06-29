# coding: utf-8

Given(/^There is a project called "(.*?)"$/) do |arg1|
  @project = FactoryGirl.create(:project, :name => arg1)
end

When(/^I follow "(.*?)"$/) do |arg1|
  # puts page.html
  click_link(arg1)
end

Then(/^I should be on the projects page for "(.*?)"$/) do |arg1|
  current_path.should == project_path(Project.find_by_name(arg1))
end

Then(/^I should not see "(.*?)"$/) do |arg1|
  page.should(have_no_content(arg1))
end