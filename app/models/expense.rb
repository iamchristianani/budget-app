class Expense < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'author_id'
  has_many :expense_groups, class_name: 'ExpenseGroup', foreign_key: 'expense_id'
  has_many :groups, through: :expense_groups

  validates :name, presence: true
  validates :amount, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
