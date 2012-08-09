require 'spec_helper'

describe "Home Controller" do

  describe "Home Page" do
  
    it "should have the h1 'Brewery Tracker'" do
      visit '/home/index'
      page.should have_selector('h1', :text => 'Brewery Tracker')
    end

    it "should have the title 'Home'" do
      visit '/home/index'
      page.should have_selector('title',
                        :text => "Brewery Tracker | Home")
      end
  end
end
