# encoding: UTF-8
require 'spec_helper'

feature "Visiting home page", %q{
  In order to know the user group
  As a first time visitor
  I want to see useful information in the home page
} do

  scenario "google groups discussion list" do
    visit "/"
    page.should have_link "Inscreva-se em nossa lista de discussão", :href => "https://groups.google.com/group/ruby-sp?hl=pt"
  end


  scenario "IRC channel" do
    visit "/"
    page.should have_link "Nosso canal de IRC", :href => "/canal-irc"
  end

  scenario "main navigation" do
    visit "/"
    within "#main-navigation" do
      page.should have_link "Encontros", :href => "/encontros"
      page.should have_link "Sobre", :href => "/sobre"
    end
  end

  scenario "sidebar with twitter" do
    visit "/"
    within "#sidebar" do
      page.should have_link "siga o @guru_sp", :href => "http://twitter.com/#!/guru_sp"
    end
  end

  scenario "sidebar without next meeting" do
    visit "/"
    within "#sidebar .next_meeting" do
      page.should have_content "Ainda não foi agendado. Aguarde!"
    end
  end


end

