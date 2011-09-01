module HelperMethods
  # Put helper methods you need to be available in all tests here.
  def login_with(email, password)
    visit "/"
    click_link "Login"
    fill_in "Email" , :with => email
    fill_in "user_password", :with => password
    click_button "Entrar"
  end
end

RSpec.configuration.include HelperMethods, :type => :acceptance

