require 'spec_helper'

describe "StaticPages" do
  
  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home Page" do

    it "should have the h1 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end

  	it "should have content 'Sample App'" do
  		visit '/static_pages/home'
  		page.should have_content('Sample App')
  	end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => '| Home')
    end

  end

  describe "Help Page" do
  	it "should have content 'Help'" do
  		visit '/static_pages/help'
  		page.should have_content('Help')
  	end

  	it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title',
                        :text => "#{base_title} | Help")
    end

  end

  describe "About page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_content('About Us')
    end

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title',
                    :text => "#{base_title} | About Us")
    end
  end


end
