require 'rails_helper'

RSpec.describe 'Login Features', type: :feature do
  it 'Test username & password inputs and the "Submit" button.' do
    visit new_user_session_path
    expect(page).to have_field('Email', type: 'email')
    expect(page).to have_field('Password', type: 'password')
    expect(page).to have_button('LOG IN', type: 'submit')
  end

  it 'Should redirected to the root page when clicking submit button with correct data' do
    @user1 = User.create! name: 'Justin', password: '000000', email: 'justin@gmail.com'
    visit new_user_session_path
    fill_in('Email', with: 'justin@gmail.com')
    fill_in('Password', with: '000000')
    click_button('LOG IN')
    expect(current_path).to have_content('/')
  end
end
