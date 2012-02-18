When /^I enter a (.*) character$/ do |char|
  @char = char
end

Then /^I should get it in (.*)$/ do |lowercase|
  @char.downcase.should == lowercase
end
