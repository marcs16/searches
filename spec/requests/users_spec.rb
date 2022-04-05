require 'rails_helper'

RSpec.describe "Users", type: :request do
  let(:current_user) { User.new(name: "Luis",email: "test@test.com", password: "password", password_confirmation: "password") }

  context "redirections when user not logged in" do
    before {get  "/users"}  
    it "redirects to users login when user not logged in" do
      subject {response}
      expect(response).to redirect_to(new_user_session_path)
    end
  end

end
