require 'rails_helper'

RSpec.describe SessionsController, type: :controller do

  describe "GET #create" do
    it "returns http success" do
      OmniAuth.config.test_mode = true
      OmniAuth.config.mock_auth[:google] = OmniAuth::AuthHash.new({
        :provider => 'google',
        :uid => '123545',
        info: {
          email: "email@gmail.com",
          first_name: "User",
          last_name: "Test"
        },
      credentials: {
        token: "abcdefg12345",
        refresh_token: "12345abcdefg",
        expires_at: DateTime.now,
      }
      })
      request.env["omniauth.auth"] = OmniAuth.config.mock_auth[:google] 
      get :create
      expect(response).to have_http_status(302)
    end
  end

  describe "GET #destroy" do
    it "returns http success" do
      get :destroy
      expect(response).to have_http_status(302)
    end
  end

end
