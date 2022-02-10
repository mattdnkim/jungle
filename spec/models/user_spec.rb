require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validation' do
    it "should match the password and confirmation password" do
    @user = User.create(first_name: "matt", last_name: "kim", email: "nyuk276@gmail.com", password: "123", password_confirmation: "123")
   expect(@user.password).to eq @user.password_confirmation
    end
    describe User, 'email check' do
      it "should check the email not in case_sensitive" do
      @user = User.create(first_name: "matt", last_name: "kim", email: "nyuk377@gmail.com", password: "123", password_confirmation: "123")
   expect(@user).to be_valid
      end
      it "should check the email already exists" do
        @user = User.create(first_name: "kim", last_name: "kim", email: "dong@gmail.com", password: "123", password_confirmation: "123")
        @user = User.create(first_name: "matt", last_name: "kim", email: "dong@gmail.com", password: "123", password_confirmation: "123")
     expect(@user).not_to be_valid
        end
      end
    end

describe "authenticate_with_credentials" do
    it "should log them in" do
    @user = User.create(first_name: "matt", last_name: "kim", email: "dong@gmail.com", password: "123", password_confirmation: "123")
    user = User.find_by(email: "dong@gmail.com")
    user && user.authenticate(password: "123")
  expect("dong@gmail.com").to eq user.id
     end
   end
 end
