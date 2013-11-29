require 'spec_helper'

describe "ResetPasswords" do
  describe "GET /reset_passwords" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get reset_passwords_path
      response.status.should be(200)
    end
  end
end
