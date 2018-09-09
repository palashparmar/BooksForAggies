Feature: User can log in to the website
  
Scenario: Sign up
  Given I am on the Books For Aggies signup page
  When I click "Sign Up"
  And I put "JohnnySmithy" in "Username"
  And I put "JohnSmith" in "Name"
  And I put "test@example.com" in "SignUpEmail"
  And I put "123" in "SignUpPassword"
  And I put "123" in "conform_Password"
  And I press "Sign Up"
  Then I should be logged in as "JohnSmith"
  
Scenario: Log in
  Given I am logged in
  And I am on the Books For Aggies signup page
  When I put "test@example.com" in "SignInEmail"
  And I put "123" in "SignInPassword"
  And I press "Login"
  Then I should be logged in as "JohnSmith"