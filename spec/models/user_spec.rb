require 'rails_helper'

RSpec.describe User, type: :model do
  before :each do
    @user = User.create(name: 'John Doe', email: 'john@example.com', password: 'password', confirmed_at: Time.now)
  end

  it 'is valid with valid attributes' do
    expect(@user).to be_valid
  end

  it 'is not valid without a name' do
    @user.name = nil
    expect(@user).to_not be_valid
  end

  it 'email should be present' do
    @user.email = nil
    expect(@user).not_to be_valid
  end

  it 'password should be present' do
    @user.password = ' '
    expect(@user).not_to be_valid
  end
end
