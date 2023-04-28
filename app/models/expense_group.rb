class ExpenseGroup < ApplicationRecord
  belongs_to :group, class_name: 'Group'
  belongs_to :expense, class_name: 'Expense'
end
