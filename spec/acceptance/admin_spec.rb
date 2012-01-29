# encoding: UTF-8
require 'acceptance/acceptance_helper'

feature "Accessing Admin Panel", %q{
  In order to manage the site
  As an admin of the group
  I want to be able to login and access the rails admin panel
} do

  let(:admin_user) do
    Factory :admin, :password => "1234567890"
  end

  let(:common_user) do
    Factory :user, :password => "1234567890"
  end

  scenario "successful sign in" do
    visit "/admin"
    login_with(admin_user.email, "1234567890")
    within ".flash" do
      page.should have_content "Conectado com sucesso."
    end
    page.should have_content "Administração do site"
  end

  scenario "user is not admin" do
        visit "/admin"
    login_with(common_user.email, "1234567890")
    page.should_not have_content "Administração do site"
  end

end

