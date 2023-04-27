require 'rails_helper'

RSpec.describe 'splash/index', type: :feature do
  before(:example) do
    visit '/'
  end

  it 'should render the splash page' do
    expect(page).to have_content 'The Bill Splitter'
  end

  it 'should display the sign up button' do
    expect(page).to have_content('SIGN UP')
  end

  it 'should display the log in button' do
    expect(page).to have_content('LOG IN')
  end

  it 'should display sign up forms' do
    click_on 'SIGN UP'
    expect(page).to have_content('Sign up')
  end

  it 'should enter sign up page' do
    click_on 'SIGN UP'
    expect(current_path).to eql new_user_registration_path
  end

  it 'should display log in forms' do
    click_on 'LOG IN'
    expect(page).to have_content('Log in')
  end

  it 'should enter log in page' do
    click_on 'LOG IN'
    expect(current_path).to eql new_user_session_path
  end
end
