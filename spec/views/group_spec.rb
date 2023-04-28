require 'rails_helper'

RSpec.describe 'Group page', type: :feature do
  before :each do
    @user = User.create(name: 'John Doe', email: 'john@example.com', password: 'password')

    visit new_user_session_path

    fill_in 'Email', with: @user.email
    fill_in 'Password', with: @user.password

    click_button 'Log in'
  end

  it 'should display the group page' do
    expect(page).to have_content('Groups')
  end

  it 'should display add new group button' do
    expect(page).to have_content('Add a new group')
  end

  it 'should display the group form' do
    click_link 'Add a new group'
    expect(page).to have_content('Create a Group')
  end
end
