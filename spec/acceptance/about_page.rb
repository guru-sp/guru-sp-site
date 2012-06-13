# encoding: UTF-8
require 'spec_helper'

feature "Visiting about page", %q{
  In order to read about the user group
  As a first time visitor
  I want to see the about page
} do

  scenario "google group discussion list" do
    visit "/"
    click_link "Sobre"
    page.should have_content "Estatuto do GURU-SP"
  end

end

