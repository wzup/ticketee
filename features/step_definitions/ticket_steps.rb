# coding: utf-8

Given(/^That project has a ticket:$/) do |table|
  table.hashes.each do |attrs|
    @project.tickets.create!(attrs)
  end  
end

Then(/^I should see "(.*?)" within "(.*?)"$/) do |arg1, arg2|
  find(arg2).should(have_content(arg1))
end
