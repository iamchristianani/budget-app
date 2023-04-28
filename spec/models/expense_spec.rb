require 'rails_helper'

RSpec.describe Expense, type: :model do
  subject do
    user = User.create(name: 'John Doe', email: 'john@example.com', password: 'password')
    Expense.new(name: 'Rice', author_id: user.id, amount: 20)
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid with amount less than zero' do
    subject.amount = -1
    expect(subject).to_not be_valid
  end
end
