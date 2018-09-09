Feature: User can add a book to the database
  
Scenario: Add a book
  Given I am logged in
  And I am on the Books For Aggies share page
  When I fill all the book fields correctly
  And I press "Submit"
  Then I should still be on the Books For Aggies share page
  And The title should read "Introduction to Algorithms"
  
Scenario: Delete a book
  Given I am logged in
  And I am on the Books For Aggies share page
  When I fill all the book fields correctly
  And I press "Submit"
  And I click the delete button
  Then I should be on the add a book page