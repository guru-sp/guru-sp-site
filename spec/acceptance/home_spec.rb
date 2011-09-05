# encoding: UTF-8
require File.expand_path(File.dirname(__FILE__) + '/acceptance_helper')

feature "Visiting home page", %q{
  In order to know the user group
  As a first time visitor
  I want to see useful information in the home page
} do

  scenario "google group discussion list" do
    visit "/"
    page.should have_link "Inscreva-se em nossa lista de discussão", :href => "https://groups.google.com/group/ruby-sp?hl=pt"
  end


  scenario "IRC channel" do
    visit "/"
    page.should have_link "entre no nosso canal do IRC", :href => "/canal-irc"
  end

  scenario "main navigation" do
    visit "/"
    within "#main-navigation" do
      page.should have_link "Encontros", :href => "/encontros"
      page.should have_link "Sobre", :href => "/sobre"
      page.should have_link "Membros", :href => "/membros"
    end
  end
end

