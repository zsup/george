require 'spec_helper'

describe "Static" do
  describe "home page" do
    it "should have the right title" do
      visit '/static/home'
      page.should have_selector('title', :text => 'SWITCH')
    end
  end
  
  describe "landing page" do
    it "should have the right title" do
      visit '/static/landing'
      page.should have_selector('title', :text => 'SWITCH')
    end
  end
end
