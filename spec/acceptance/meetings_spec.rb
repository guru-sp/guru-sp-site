# encoding: UTF-8
require 'spec_helper'

feature "Navigating Meetings", %q{
  In order to know more about Guru-SP meetings
  As a visitor of the site
  I want to know when is the next meeting, list the past meetings and see
  details about a given meeting
} do

  background "given that there is a visible meeting hapenning this year" do
    
    caelum = FactoryGirl.create :sponsor, :name => "Caelum",
                                :url => "http://caelum.com.br"

    FactoryGirl.create :meeting, :title => "Encontro 99",
                       :description => "<strong>Amazing description</strong>",
                       :date => DateTime.new(2012,11,10,9),
                       :visible => true,
                       :sponsors => [caelum]
  end

  scenario "checking a meeting date in meetings page" do
    visit "/"
    click_link "Encontros"
    click_link "2012"
    click_link "Encontro 99"
    page.should have_content "Encontro 99"
    within ".date h3" do
      page.should have_content "Sábado, 10 de Novembro de 2012 às 09:00 hs"
    end
  end

  scenario "checking a meeting date in meetings page" do
    visit "/"
    click_link "Encontros"
    click_link "2012"
    click_link "Encontro 99"
    page.should have_content "Encontro 99"
    within ".sponsors" do
      page.should have_link "Caelum"
    end
  end

end
