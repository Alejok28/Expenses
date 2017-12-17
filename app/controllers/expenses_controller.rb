class ExpensesController < ApplicationController
  before_action :authenticate_user!
  def index
    @expenses = Expense.order("date DESC").concepto("%#{params[:concept]}%").id("%#{params[:category_id]}%")
    @userexpenses=[]
    @expenses.each do |expense|
      if current_user == expense.user
      @userexpenses.push(expense)
      end
    end
  end
end
