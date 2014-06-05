# encoding: UTF-8
require 'spec_helper'

feature "Navigating Meetings", %q{
  In order to know more about Guru-SP meetings
  As a visitor of the site
  I want to know when is the next meeting, list the past meetings and
  see details about a given meeting
} do

  let(:title) { "Encontro 99" }

  background "given that there is a visible meeting hapenning this year" do
    
    caelum = FactoryGirl.create :sponsor, :name => "Caelum",
                                :url => "http://caelum.com.br"

    FactoryGirl.create :meeting, :title => title,
                       :description => "<strong>Amazing description</strong>",
                       :date => DateTime.new(2012,11,10,9),
                       :visible => true,
                       :sponsors => [caelum]
  end

  def navigate_to_meeting
    visit "/"
    click_link "Encontros"
    click_link "2012"
    click_link title
  end

  scenario "checking a meeting date in meetings page" do
    navigate_to_meeting
    within ".date h3" do
      page.should have_content "Sábado, 10 de Novembro de 2012 às 09:00 hs"
    end
  end

  scenario "checking a meeting title, sponsor inside meeting's page" do
    navigate_to_meeting
    page.should have_content title
    within ".sponsors" do
      page.should have_link "Caelum"
    end
  end

end
