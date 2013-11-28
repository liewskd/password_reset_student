require 'spec_helper'

describe "Static pages" do
    describe "Home page" do
        it "should have the content 'Home'" do
            visit '/static_pages/home'
            expect(page).to have_content("Home Page")
        end
        
        it "should have the content 'CWSS IT Department | Home'" do
            visit '/static_pages/home'
            expect(page).to have_title("CWSS IT Department | Home")
        end
    end

    describe "FAQ" do
        it "should have the content 'FAQ'" do
            visit '/static_pages/FAQ'
            expect(page).to have_content("FAQ")
        end
        
        it "should have the content 'CWSS IT Department | FAQ'" do
            visit '/static_pages/FAQ'
            expect(page).to have_title("CWSS IT Department | FAQ")
        end
    end
    
    describe "Contact Us" do
            it "should have the content 'Contact Us'" do
                visit '/static_pages/contactUs'
                expect(page).to have_content("Contact Us")
            end
            
            it "should have the title 'CWSS IT Department | Contact Us'" do
                visit '/static_pages/contactUs'
                expect(page).to have_title("CWSS IT Department | Contact Us")
            end
    end

end