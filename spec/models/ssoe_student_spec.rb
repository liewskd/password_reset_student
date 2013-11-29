require 'spec_helper'

describe SsoeStudent do
    #pending "add some examples to (or delete) #{__FILE__}"
    before { @SsoeStudent = SsoeStudent.new(stdsname: "Example User", stdsemail: "user@example.com", stdsclass: "S1/1", stdsic: "S1234567B") }
    subject {@SsoeStudent}
    
    it {should respond_to(:stdsname)}
    it {should respond_to(:stdsemail)}
    it {should respond_to(:stdsclass)}
    it {should respond_to(:stdsic)}
    
    it {should be_valid}
    
    describe "when name is not present" do
        before {@SsoeStudent.stdsname = ""}
        it {should_not be_valid}
    end
    
    describe "when name is too long" do
        before {@SsoeStudent.stdsname = "a" * 51}
        it {should_not be_valid}
    end
    
    describe "when email is not present" do
        before {@SsoeStudent.stdsemail = ""}
        it {should_not be_valid}
    end
    
    describe "when NRIC is not present" do
        before {@SsoeStudent.stdsic = ""}
        it {should_not be_valid}
    end
    
    describe "when NRIC is invalid" do
        before {@SsoeStudent.stdsic = "a" * 10}
        it {should_not be_valid}
    end
    
    describe "when class is not present" do
        before {@SsoeStudent.stdsclass = ""}
        it {should_not be_valid}
    end
    
    describe "when email format is invalid" do
        it "should be invalid" do
            addresses = %w[user@foo,com user_at_foo.org example.user@foo. foo@bar_baz.com foo@bar+baz.com]
            addresses.each do |invalid_address|
                @SsoeStudent.stdsemail = invalid_address
                expect(@SsoeStudent).not_to be_valid
            end
        end
    end
    
    describe "when email format is valid" do
        it "should be valid" do
            addresses = %w[user@foo.COM A_US-ER@f.b.org frst.last@foo.jp a+b@baz.cn]
            addresses.each do |valid_address|
                @SsoeStudent.stdsemail = valid_address
                expect(@SsoeStudent).to be_valid
            end
        end
    end
    
    describe "when student has already submitted before" do
        before do
            user_with_same_email = @SsoeStudent.dup
            user_with_same_email.save
        end
        
        it {should_not be_valid}
    end
end
