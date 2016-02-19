# spec/models/login_spec.rb
require 'spec_helper'

describe 'Sign in' do
  context'existing user' do
    let!(:user) { FactoryGirl.create(:user)}

    it 'allows to sign in' do
      visit root_path
      click_link('Sign in')
      fill_in 'user_email', with: user.email
      fill_in 'user_password', with: 'TestenIstKacke'
      click_button("Log in")


      expect(page).to have_content 'Signed in successfully.'
     end
  end
end
