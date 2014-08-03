require 'spec_helper'

describe 'Homepage loaded' do

  describe "I navigate to the soulmates home page" do
    @app = PageLoader.new
    @app.home.load
  end

  it "should be a secure site" do
    @app.home.secure?
    # @app.home.displayed?
    # @app.home.secure?
    # @app.home.have_title('Ming')
  end

  it "should contain the menu and the find button" do
    # @app.home.have_title('Ming')
    #
    # @app.home.should have_carousel
    # @app.home.should have_find_button
  end

end