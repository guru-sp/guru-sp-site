# encoding: UTF-8
require 'spec_helper'

feature "Accessing Admin Panel", %q{
  In order to manage the site
  As an admin of the group
  I want to be able to login and access the rails admin panel
} do

  let(:password) { "1234567890" }

  let(:admin_user) do
    FactoryGirl.create :admin, :password => password
  end

  let(:common_user) do
    FactoryGirl.create :user, :password => password
  end

  scenario "successful sign in" do
    visit "/admin"
    login_with(admin_user.email, password)
    within ".alert" do
      page.should have_content "Conectado com sucesso."
    end
    page.should have_content "Administração do site"
  end

  scenario "succesful sign out" do
    visit "/admin"
    login_with(admin_user.email, password)
    click_link "Deslogar"
    within ".message" do
      page.should have_content "Desconectado com sucesso."
    end
  end

  scenario "user is not admin" do
    visit "/admin"
    login_with(common_user.email, "1234567890")
    page.should_not have_content "Administração do site"
  end

end

