
Then /^I press "([^\"]*)"$/ do |identifier|
  tap_when_element_exists("* marked:'#{identifier}'")
end


