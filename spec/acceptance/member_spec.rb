# encoding: UTF-8
require File.expand_path(File.dirname(__FILE__) + '/acceptance_helper')

feature "Managing Member", %q{
  In order to make guru-sp website
  As a member of the group
  I want to be able to login and appear as a member
} do

  let(:user) do
    Factory :user, :password => "1234567890"
  end

  scenario "sign up" do
    visit "/"
    click_link "Registrar-se"
    fill_in "Email", :with => "nathan@vieiraproenca.com"
    fill_in "Apelido", :with => "Carinha"
    fill_in "user_password", :with => "secret"
    fill_in "user_password_confirmation", :with => "secret"
    fill_in "user_github", :with => "secret"
    click_button "Registrar-se"
    within ".flash" do
      page.should have_content "Conectado com sucesso."
    end
  end

  scenario "successful sign in" do
    login_with(user.email, "1234567890")
    within ".flash" do
      page.should have_content "Conectado com sucesso."
    end
    within "#user-navigation" do
      page.should have_content "Perfil"
      page.should have_content "Sair"
    end
  end

  scenario "sign up with wrong password" do
    login_with(user.email, "wrongpassword")
    within ".flash" do
      page.should have_content "Email ou senha inválidos."
    end
  end

  scenario "edit profile" do
    login_with(user.email, "1234567890")
    click_link "Perfil"
    fill_in "Github", :with => "torvalds"
    fill_in "site/blog pessoal", :with => "http://www.agaelebe.com"
    fill_in "Senha atual*", :with => "123456"
    click_button "Atualizar perfil"
    within ".flash" do
      page.should have_content "Seu perfil foi atualizado com sucesso."
    end
  end

  scenario "list users" do
    5.times do |number|
      User.create :email => "user#{number}@wtv.com" , :github => "user_#{number}", :password => "secret", :nickname => "cara_#{number}"
    end
    visit "/users"
    5.times {|number| page.should have_content "cara_#{number}" }
  end

end

