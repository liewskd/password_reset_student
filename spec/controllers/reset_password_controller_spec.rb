require 'spec_helper'

describe ResetPasswordController do

  describe "GET 'gmail_student'" do
    it "returns http success" do
      get 'gmail_student'
      response.should be_success
    end
  end

  describe "GET 'ssoe_student'" do
    it "returns http success" do
      get 'ssoe_student'
      response.should be_success
    end
  end

  describe "GET 'gmail_staff'" do
    it "returns http success" do
      get 'gmail_staff'
      response.should be_success
    end
  end

  describe "GET 'ssoe_staff'" do
    it "returns http success" do
      get 'ssoe_staff'
      response.should be_success
    end
  end

end
