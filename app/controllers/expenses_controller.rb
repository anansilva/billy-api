class ExpensesController < ApplicationController
  before_action :find_expense, only: %i[show update destroy]

  def index
    expenses = Expense.all
    render json: expenses
  end

  def show
    expense = Expense.find(params[:id])
    render json: expense
  end

  def update
    if @expense.update(amount: expense_params[:amount])
      render json: @expense
    else
      render json: @expense, status: 422
    end
  end

  def destroy
    if @expense.destroy
      render json: @expense
    else
      render json: @expense, status: 422
    end
  end

  private

  def find_expense
    @expense = Expense.find(params[:id])
  end

  def expense_params
    params.permit(:amount)
  end
end
