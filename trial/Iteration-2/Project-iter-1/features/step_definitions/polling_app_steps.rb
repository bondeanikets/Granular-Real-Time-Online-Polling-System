Given /the following users exist/ do |users_table|
   users_table.hashes.each do |movie|
   User.create movie
   #print("hello\n")
   end
end



Then /^I should be on the confirmation page for$/ do 
    visit '/signup'
end

Then(/^I should be on the Signup page for$/) do
  visit '/signup'
end