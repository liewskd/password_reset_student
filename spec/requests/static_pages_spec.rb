require 'spec_helper'

describe "Static pages" do
    subject {page}

    describe "Home page" do
        before {visit root_path}
        
        it {should have_title(full_title(""))}
        it {should_not have_title('| Home')}
    end

    describe "FAQ" do
        before {visit faq_path}
    
    it {should have_title(full_title(""))}
    end

    describe "Reset Password" do
        before {visit resetPassword_path}
    
        it {should have_title(full_title(""))}
    end

    describe "Contact Us" do
        before {visit contactUs_path}
        
        it {should have_title(full_title(""))}
    end
end