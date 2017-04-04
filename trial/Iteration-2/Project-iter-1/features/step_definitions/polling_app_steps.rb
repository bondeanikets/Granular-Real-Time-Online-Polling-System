Given /the following users exist/ do |users_table|
   users_table.hashes.each do |movie|
   User.create movie
   #print("hello\n")
   end
end




Then /^I should be on the "([^"]*)" page$/ do |user_name|
   #print(user_name,"\n")
    @user=User.find_by name: user_name
    print(@user)
    #visit user_path(@user.id)
end

Then(/^I should be on the Signup page for$/) do
  visit '/signup'
end