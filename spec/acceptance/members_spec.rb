# encoding: UTF-8
require 'spec_helper'

feature "Managing Member", %q{
  In order to make guru-sp website
  As a member of the group
  I want to be able to login, appear as a member, edit my profile and see other members profiles
} do

  let(:pass) { "1234567890" }

  let(:user) do
    FactoryGirl.create :user, :password => pass
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
    login_with(user.email, pass)
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
      page.should have_content "Email ou senha inválido."
    end
  end

  scenario "edit profile from 'Perfil' link" do
    login_with(user.email, pass)
    click_link "Perfil"
    fill_in "Github", :with => "torvalds"
    fill_in "site/blog pessoal", :with => "http://www.agaelebe.com"
    fill_in "Senha atual", :with => pass
    click_button "Atualizar perfil"
    within ".flash" do
      page.should have_content "Seu perfil foi atualizado com sucesso."
    end
  end

  let(:new_pass) { "umasenhabemmaisdificil" }

  scenario "change password" do
    login_with(user.email, pass)
    click_link "Perfil"
    fill_in "Nova senha", :with => new_pass
    fill_in "Confirmação da nova senha", :with => new_pass
    fill_in "Senha atual", :with => pass
    click_button "Atualizar perfil"
    within ".flash" do
      page.should have_content "Seu perfil foi atualizado com sucesso."
    end
  end
  
  
  background do
    5.times do |number|
      User.create(:email => "user#{number}@wtv.com",
                  :github => "user_#{number}",
                  :password => "secret",
                  :name => "Fulano #{number}",
                  :nickname => "cara_#{number}",
                  :site => "http://www.example_#{number}.com")
    end
  end
  
  scenario "listing members nicknames and full names" do
    visit "/membros"
    5.times do |number|
      page.should have_content "cara_#{number} (Fulano #{number})"
    end
  end

end

