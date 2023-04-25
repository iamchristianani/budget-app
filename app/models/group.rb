class Group < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :expenses_groups, class_name: 'ExpenseGroup', foreign_key: 'group_id', dependent: :destroy

  validates :name, presence: true
  validates :icon, presence: true

  def total_price
    expenses_groups.sum { |expgro| expgro.expense.amount }
  end
end
