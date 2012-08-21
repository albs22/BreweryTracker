require 'spec_helper'

describe "Home Controller" do

  describe "Home Page" do
  
    it "should have the h1 'Brewery Tracker'" do
      visit '/home/home'
      page.should have_selector('h1', :text => 'Brewery Tracker')
    end

    it "should have the title 'Home'" do
      visit '/home/home'
      page.should have_selector('title',
                        :text => "Brewery Tracker")
     end
  end

  describe "Browse Brewery Page" do
    
    it "should have the h1 content 'Browse Breweries'" do
      visit '/home/browse'
      page.should have_selector('h1', :text => 'Browse Breweries')
    end

    it "should have the the title 'Browse Breweries'" do
      visit '/home/browse'
      page.should have_selector('title', :text => "Brewery Tracker | Browse")
    end
  end
end

