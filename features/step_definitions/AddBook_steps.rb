require 'capybara'
require 'selenium-webdriver'

Given("I am logged in") do
  expect(page).to have_current_path('/')
  visit(users_path)
  click_link("Sign Up")
  fill_in "Username", :with => "JohnnySmithy"
  fill_in "Name", :with => "JohnSmith"
  fill_in "SignUpEmail", :with => "test@example.com"
  fill_in "SignUpPassword", :with => "123"
  fill_in "conform_Password", :with => "123"
  click_button("Sign Up")
  #expect(find('div.header__title-main')).text to be "JohnSmith"
end

Given("I am on the Books For Aggies share page") do
  expect(page).to have_current_path('/')
  visit(home_book_path)
end

When("I fill all the book fields correctly") do
  fill_in 'title', :with => 'Introduction to Algorithms'
  fill_in 'author', :with => 'Thomas H. Cormen, Charles E. Leiserson, Ronald Rivest, Clifford Stein'
  fill_in 'edition', :with => '3rd'
  fill_in 'category', :with => 'Textbook'
  fill_in 'abstract', :with => 'Algorithms book'
  fill_in 'isbn_no', :with => '978-0-262-03384-8'
  fill_in 'description', :with => 'Test' 
  fill_in 'publisher', :with => 'MIT Press'
end

When("I press {string}") do |string|
  click_button(string)
end

When("I click the delete button") do 
  find('a', text: "Delete").click
end

Then("I should still be on the Books For Aggies share page") do
   expect(page).to have_current_path('/show/1/show')
end

Then("The {string} field should contain {string}") do |string, string2|
   page.find_field(string).value == string2
end

Given("I am on the My Books page") do
  expect(page).to have_current_path('/')
  visit(show_books_path)
end

Then("I should be on the add a book page") do
  expect(page).to have_current_path('/book')
end

Then("The title should read {string}") do |string|
  find('p.tm-section-intro-title', text: string)
end
