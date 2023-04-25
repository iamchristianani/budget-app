class Expense < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :expenses_groups, class_name: 'ExpenseGroup', foreign_key: 'expense_id', dependent: :destroy

  validates :name, presence: true
  validates :amount, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
