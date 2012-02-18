
Then /^I should get it converted in (.*)$/ do |uppercase|
  @char.upcase.should == uppercase
end
