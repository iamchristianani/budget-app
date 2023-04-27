class ExpensesController < ApplicationController
  before_action :authenticate_user!

  def index
    @group = Group.find(params[:group_id])
    @expenses = @group.recent_expenses
  end

  def new
    @expense = Expense.new
    @all_groups = current_user.groups
    @expense_group = @expense.expense_groups.build
  end

  def create
    expense = Expense.new(expense_params.except(:expense_groups))
    expense.author_id = current_user.id

    if expense.save
      expense_params[:expense_groups][:group_ids].each do |id|
        expense.expense_groups.create(group_id: id) unless id == ''
      end
      redirect_to groups_path, notice: 'Expense successfully created.'
    else
      render :new, error: 'There was a problem creating the expense.'
    end
  end

  private

  def expense_params
    params.require(:new_expense).permit(:name, :amount, expense_groups: [group_ids: []])
  end
end
