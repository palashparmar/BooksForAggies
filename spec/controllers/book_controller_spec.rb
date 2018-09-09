require 'rails_helper'

describe BookController, type: :controller do

  describe "#index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

describe "#create" do
 	it "creates a successful message post" do
      @book = Book.create()
      expect(@book).to be_an_instance_of(Book)
  	end
  	it "unsuccessful book post" do
  	  @book = Book.create()
      expect(@book).to be_an_instance_of(Book)
  	end
end
'''
describe "#record_invalid_rescue1" do
	it "error is not generated" do
	  expect(flash[:error]).to eq nil
	end
end
'''

end
