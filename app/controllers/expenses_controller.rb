class ExpensesController < ApplicationController
  def index
    @expense = current_user.expenses
  end

  def new
    @expense = Expense.new
  end

  def create
    @expense = Expense.new(expense_params)
    @expense.author_id = current_user.id
    if @expense.save
      flash[:success] = 'Expense created successfully'
      redirect_to expenses_path
    else
      flash[:danger] = 'Expense not created'
      render :new, status: :unprocessable_entity
    end
  end

  private

  def expense_params
    params.require(:expense).permit(:name, :amount)
  end
end
