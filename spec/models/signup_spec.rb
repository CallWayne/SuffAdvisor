# spec/models/event_spec.rb
require 'spec_helper'

describe 'Sign up' do
  before(:each) do
    visit root_path
  end
  it 'allows to sign up' do
    click_link 'Sign up'
    fill_in 'user_email', with: 'testen@istkacke.de'
    fill_in 'user_password', with: 'TestenIstKacke'
    fill_in 'user_password_confirmation', with: 'TestenIstKacke'

    expect {click_button 'Sign up'}.to change {User.count}.by(1)

    expect(page).to have_content 'Welcome'
  end
end