require_relative './spec_helper'


  describe 'Soulmates home page' do

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

      it 'navigates next and previous' do
        @page = PageLoader.new
        @page.home.load
        @page.home.carousel_next.click
        @page.home.carousel_previous.click
      end

      it 'should return results from /find page' do
        @page = PageLoader.new
        @page.home.load
        @page.home.find_mygender_woman.click
        @page.home.find_seeking_man.click
        @page.home.button_find.click
        expect(@page.home).to have_title "Find your soulmate | Grauniad Soulmates"
      end
  end