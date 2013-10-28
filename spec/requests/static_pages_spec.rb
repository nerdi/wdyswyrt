require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the content 'Say What You Really Think'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      expect(page).to have_content('Say What You Really Think')
    end
    it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("Say What You Really Think | Home")
    end
  end
  describe "Help page" do
    it "should have the content 'Say What You Really Think'" do
      visit '/static_pages/help'
      expect(page).to have_content('Say What You Really Think')
    end
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("Say What You Really Think | Help")
    end
  end
  describe "About page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("Say What You Really Think | About Us")
    end
  end
end
