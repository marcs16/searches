require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user_test) { User.new(name: "Luis",
                    email: "test@test.com", password: "password", 
                    password_confirmation: "password") }

  subject{ user_test }
  context "validations" do
    it "has a name" do
      #subject.name = nil
      expect(subject.name).to be_present 
    end
    it "has an email" do
      #subject.email = nil
      expect(subject.email).to be_present 
    end
    it "has a password" do
      #subject.password = nil
      expect(subject.password).to be_present 
    end
    it "has a password confirmation" do
      #subject.password_confirmation = nil
      expect(subject.password_confirmation).to be_present 
    end
    it "has a name with at most 50 characters" do
      #subject.name = 'a' * 51
      expect(subject.name).to have_attributes(size: (be <= 50))
    end  
    it "has an email with at most 255 characters" do
      #subject.email = 'a' * 256
      expect(subject.email).to have_attributes(size: (be <= 255))
    end
    
  end
  context "Methods" do
    it "has a method to find users by name" do
      expect(User).to respond_to(:users_find_name)
    end
    it "finds the a person searching by name" do
      subject.save
      user_name = User.users_find_name(subject.name).result[0].name
      expect(subject.name).to eq(user_name)
    end
  end
  
end
