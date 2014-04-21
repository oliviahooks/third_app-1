require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    subject { page }

  before {visit root_path}

    it { should have_selector("h1", text: 'Third App')}
    
      it "should have a title" do
      
      page.should have_selector("title", text: 'Home Page')
    end
  end
    describe "Help page" do

    before {visit help_path}

    it "should have the content Help Page" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      
      page.should have_selector("h1", text: 'Help Page')
    end
    it "should have a title" do
     
      page.should have_selector("title", text: 'Help Page')
    end
  end
  describe "About Us page" do
    before{visit about_path}
    it "should have the content About Us" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      page.should have_selector("h1", text: 'About Us')
    end
    it "should have a title" do
      
      page.should have_selector("title", text: 'About Page')
    end
  end
describe "Contact Page" do
  before {visit contact_path}
  it "should have the content Contact Us" do
    page.should have_selector("h1", text: 'Contact Us')
end
it "should have a title" do
      page.should have_selector("title", text: 'Contact Page')
     end
  end   

end