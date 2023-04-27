require 'rails_helper'

RSpec.describe ExpensesController, type: :request do
  include Devise::Test::IntegrationHelpers
  before(:example) do
    @user = User.create(name: 'John Doe', email: 'johndoe@example.com', password: 'password', confirmed_at: Time.now)
    @group = Group.create(name: 'Fruits', icon: 'fruits.jpg', author_id: @user.id)
    @expense = Expense.create(name: 'Banana', amount: 10, author_id: @user.id)
    @expense.groups << @group
  end

  describe 'GET /new' do
    before do
      sign_in @user
      get new_expense_path
    end
    it 'should return response status correct (ok)' do
      expect(response).to have_http_status(:ok)
    end
    it 'response to html' do
      expect(response.content_type).to include 'text/html'
    end
    it 'contains the correct content' do
      expect(response.body).to include 'Create an Expense'
    end
  end

  describe 'POST /create' do
    before do
      sign_in @user
      post expenses_path,
           params: { new_expense: { name: 'Banana', amount: 100, expense_groups: { group_ids: [@group.id] } } }
    end
    it 'should return response status correct (ok)' do
      expect(response).to have_http_status(:found)
    end
    it 'response to html' do
      expect(response.content_type).to include 'text/html'
    end
    it 'contains the correct content' do
      get group_expenses_path(@group)
      expect(response.body).to include '100'
    end
  end
end
