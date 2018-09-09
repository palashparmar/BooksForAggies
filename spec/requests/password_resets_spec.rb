require 'rails_helper'

RSpec.describe "PasswordResets", type: :request do
  it "emails user when rewuesting password reset" do
    user = Factory(:user)
    visit users_path
    click_link "Forgot Password?"
    fill_in "Email", with=>  user.email
    click_button "Submit"
  end
end
