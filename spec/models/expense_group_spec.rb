require 'rails_helper'

RSpec.describe ExpenseGroup, type: :model do
  subject do
    user = User.create(name: 'John Doe', email: 'johndoe@example.com', password: 'password', confirmed_at: Time.now)
    group = Group.create(name: 'Fruits', icon: 'fruits.jpg', author_id: user.id)
    expense = Expense.create(name: 'Banana', amount: 10, author_id: user.id)
    ExpenseGroup.new(group_id: group.id, expense_id: expense.id)
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end
end
