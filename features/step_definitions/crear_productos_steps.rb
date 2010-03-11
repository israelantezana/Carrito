Given /^I am in the "([^\"]*)"$/ do |page|
  visit page
end

When /^I click "([^\"]*)"$/ do |arg1|
  click_link arg1
end

Then /^I should see a form/ do
  response.should have_tag("form")
end

When /^I fill with computer, 1000\.00, Personal computer, demo\/images\/computer\.jpg$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should see computer, 1000\.00, demo\/images\/computer\.jpg$/ do
  pending # express the regexp above with the code you wish you had
end


