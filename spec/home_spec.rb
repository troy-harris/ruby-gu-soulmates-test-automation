require_relative './spec_helper'


  describe 'The Guardian Soulmates homepage' do

    it 'loads as https' do
      @page = PageLoader.new
      @page.home.load
      @page.home.secure?
      end

      it 'should display login fields' do
        @page = PageLoader.new
        @page.home.load
        expect(@page.home).to have_username_field
        expect(@page.home).to have_password_field
      end

      it 'has an image carousel you can navigate' do
        @page = PageLoader.new
        @page.home.load
        @page.home.carousel_next.click
        @page.home.carousel_previous.click
      end

      it 'has a find a profile form you can search with' do
        @page = PageLoader.new
        @page.home.load
        @page.home.find_mygender_woman.click
        @page.home.find_seeking_man.click
        @page.home.button_find.click
        expect(@page.home).to have_title "Find your soulmate | Grauniad Soulmates"
      end
  end