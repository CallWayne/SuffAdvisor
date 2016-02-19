# spec/models/comment_spec.rb
=begin require 'spec_helper'

describe 'Comment' do
  context'existing user' do
    let!(:user) { FactoryGirl.create(:user)}
    FactoryGirl.create(:event)

    it 'allows to sign in' do
      visit root_path
      click_link('Sign in')
      fill_in 'user_email', with: user.email
      fill_in 'user_password', with: 'TestenIstKacke'
      click_button("Log in")


      expect(page).to have_content 'Signed in successfully.'
    end

    it 'comment' do
      visit root_path
      click_link('Events')
      first(:link, 'Show').click
      page.fill_in 'commentable_body', :with => 'TestenIstKacke'

      expect(page).to have_content 'Your comment was sucessfully posted!'
    end
  end
end
=end
