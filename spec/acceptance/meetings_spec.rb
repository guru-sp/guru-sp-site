# encoding: UTF-8
require 'spec_helper'

feature "Navigating Meetings", %q{
  In order to know more about Guru-SP meetings
  As a visitor of the site
  I want to know when is the next meeting, list the past meetings and see
  details about a given meeting
} do
  
  let(:meeting) do
  end
  
  background "given that there is a visible meeting hapenning this year" do
    FactoryGirl.create :meeting, :title => "Encontro 99",
                       :description => "<strong>Amazing</strong>",
                       :date => DateTime.new(2012,11,10,9),
                       :visible => true
  end
  
  scenario "listing meetings" do
    visit "/"
    click_link "Encontros"
    within ".list .item" do
      page.should have_content "Amazing"
    end
  end
  
  scenario "checking a meeting in meetings page" do
    visit "/"
    click_link "Encontros"
    click_link "2012"
    click_link "Encontro 99"
    page.should have_content "Encontro 99"
    within ".date h3" do
      page.should have_content "Sábado, 10 de Novembro de 2012 às 09:00 hs"
    end
  end

end
