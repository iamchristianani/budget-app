require 'rails_helper'

RSpec.describe 'Expenses page', type: :feature do
  before :each do
    @user = User.create(name: 'John Doe', email: 'john@example.com', password: 'password', confirmed_at: Time.now)

    visit new_user_session_path

    fill_in 'Email', with: @user.email
    fill_in 'Password', with: @user.password

    click_button 'Log in'

    @group = Group.create(name: 'Fruits', icon: 'fruits.jpg', author_id: @user.id)

    @expense = Expense.create(name: 'Banana', amount: 10, author_id: @user.id)

    visit group_expenses_path(@group)
  end

  it 'should display the expenses page' do
    expect(page).to have_content('Expenses')
  end

  it 'should display add new expense button' do
    expect(page).to have_content('Add a new Expense')
  end

  it 'should display the total price' do
    click_link 'Add a new Expense'
    expect(page).to have_content('Create an Expense')
  end

  it 'should save the expense' do
    click_link 'Add a new Expense'
    fill_in 'Name', with: 'Banana'
    fill_in 'Amount', with: 100
    find('#new_expense_expense_groups_group_ids').find(:xpath, 'option[1]').select_option
    click_button 'Create'
    expect(page).to have_content('Expense successfully created.')
  end
end
