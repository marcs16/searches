require 'rails_helper'

RSpec.describe "Welcomes", type: :request do
  let(:current_user) { User.new(name: "Luis",email: "test@test.com", password: "password", password_confirmation: "password") }

  context "redirections" do
    it "redirects to login if no user logged in " do
      get "/welcome/home"
      expect(response).to redirect_to(new_user_session_path)
    end
  end

end
