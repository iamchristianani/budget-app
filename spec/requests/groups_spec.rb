require 'rails_helper'

RSpec.describe GroupsController, type: :request do
  include Devise::Test::IntegrationHelpers
  before(:example) do
    @user = User.create(name: 'John Doe', email: 'johndoe@example.com', password: 'password', confirmed_at: Time.now)
    @group = Group.create(name: 'Fruits', icon: 'fruits.jpg', author_id: @user.id)
    @expense = Expense.create(name: 'Banana', amount: 10, author_id: @user.id)
    @expense.groups << @group
  end

  describe 'GET /index' do
    before do
      sign_in @user
      get groups_path
    end
    it 'should return response status correct (ok)' do
      expect(response).to have_http_status(:ok)
    end
    it 'response to html' do
      expect(response.content_type).to include 'text/html'
    end
    it 'contains the correct content' do
      expect(response.body).to include 'Fruits'
    end
  end

  describe 'GET /new' do
    before do
      sign_in @user
      get new_group_path
    end
    it 'should return response status correct (ok)' do
      expect(response).to have_http_status(:ok)
    end
    it 'response to html' do
      expect(response.content_type).to include 'text/html'
    end
    it 'contains the correct content' do
      expect(response.body).to include 'Create a Group'
    end
  end

  describe 'POST /create' do
    before do
      sign_in @user
      post groups_path, params: { new_group: { name: 'Foods', icon: 'https://img.icons8.com/external-flaticons-lineal-color-flat-icons/256/external-foods-farm-flaticons-lineal-color-flat-icons.png' } }
    end

    it 'should return response status correct (ok)' do
      expect(response).to have_http_status(:found)
    end
    it 'response to html' do
      expect(response.content_type).to include 'text/html'
    end
    it 'contains the correct content' do
      get groups_path
      expect(response.body).to include 'Foods'
    end
  end
end
