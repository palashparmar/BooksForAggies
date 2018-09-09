require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let(:param) { {Email: "palparmar", Password: "p"}}
  describe "GET index" do
    it "has a 200 status code" do
      get :index
      expect(response).to render_template("index")
      expect(response.status).to eq(200)
    end

    it "when signing in" do

      get :signin
      expect(helper.param[:currentName]).to eq "palash"
      expect(response).to redirect_to(root_path)




    end
  end

end
