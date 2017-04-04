Feature: Signing up as an Admin
  
Background: users in database
 
  Given the following users exist:
  | name        | email                     | 
  | Richard     | richard@tamu.edu          | 
  | Nithin      | talk_to_nithin@tamu.edu   | 
  


Scenario: Signup as an admin
  Given I am on the home page for the Polling App
  When  I follow "Sign up now!" 
  Then  I should be on the Signup page for 
  And  I fill in "Name" with "Richard"
  And  I press "Create my account"
  Then  I should be on the "Richard" page
  And   I should see "Welcome to the Sample App"
  