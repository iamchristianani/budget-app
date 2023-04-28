class Group < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'author_id'
  has_many :expense_groups, class_name: 'ExpenseGroup', foreign_key: 'group_id'
  has_many :expenses, through: :expense_groups

  validates :name, presence: true
  validates :icon, presence: true

  def recent_expenses
    expenses.order(created_at: :desc)
  end

  def total_price
    expenses.sum(&:amount)
  end

  def expenses_count
    expenses.count
  end
end
