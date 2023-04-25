require 'rails_helper'

RSpec.describe Group, type: :model do
  subject do
    user = User.create(name: 'John Doe', email: 'johndoe@gmail.com', password: 'password', confirmed_at: Time.now)
    Group.new(author_id: user.id, name: 'Foods', icon: 'foods.jpg')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without an icon' do
    subject.icon = nil
    expect(subject).to_not be_valid
  end
end
