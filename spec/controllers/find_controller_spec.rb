require 'rails_helper'

RSpec.describe FindController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
    it "checks session" do
  		@var = session.has_key?(:currentName)
  		expect(@var). to be false
  	end
  # 	it "find all books" do
  # 		@book = Book.all
  # 		expect(@book). to include('a')
  # 	end
  end

end
