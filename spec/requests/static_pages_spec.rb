require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do

  before {visit root_path}

    it "should have the content Sample App" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      
      page.should have_selector("h1", text: 'Third App')
    end
      it "should have a title" do
      
      page.should have_selector("title", text: 'Home Page')
    end
  end
    describe "Help page" do
    it "should have the content Help Page" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit  help_path
      page.should have_selector("h1", text: 'Help Page')
    end
    it "should have a title" do
      visit  help_path
      page.should have_selector("title", text: 'Help Page')
    end
  end
  describe "About Us page" do
    it "should have the content About Us" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit  about_path
      page.should have_selector("h1", text: 'About Us')
    end
    it "should have a title" do
      visit  about_path
      page.should have_selector("title", text: 'About Page')
    end
  end
end
