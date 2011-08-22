# encoding: UTF-8
require File.expand_path(File.dirname(__FILE__) + '/acceptance_helper')

feature "Managing Member", %q{
  In order to make guru-sp website
  As a member of the group
  I want to be able to login and appear as a member
} do

  scenario "sign up" do
    visit "/"
    click_link "Registrar-se"
    fill_in 'Email', :with => "nathan@vieiraproenca.com"
    fill_in 'user_password', :with => "secret"
    fill_in 'user_password_confirmation', :with => "secret"
    click_button "Registrar-se"
  end
  
  scenario "sign in" do
    visit "/"
    click_link 'Login'
    fill_in 'Email' , :with => "nathan@vieiraproenca.com"
    fill_in 'user_password', :with => "secret"
    check "user_remember_me"
    click_button "Entrar"
    have_content "Sair"
  end
  
  scenario "list users" do
    5.times do |number|
      User.create :email => "user#{number}@wtv.com" , :password => "secret"
    end
    visit "/users"
    5.times {|n| have_content "user#{n}@wtv.com" }
  end

end
