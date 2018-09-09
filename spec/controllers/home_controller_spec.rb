require 'rails_helper'

RSpec.describe HomeController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end
  it "checks session" do
  	@var = session.has_key?(:currentName)
  	expect(@var). to be false
  end
end
