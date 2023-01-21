class TransactionsController < ApplicationController
  def index
    category = Category.includes(:transactions).find(params[:category_id])
    @transactions = category.transactions.order(:created_at)
    @total = category.transactions.sum(:price)
  end

  def new
    @transaction = Transaction.new
  end

  def create
    @transaction = Transaction.new(transaction_params)
    @transaction.category_id = params[:category_id]
    if @transaction.save!
      redirect_to category_transactions_path, notice: 'Transaction was successfully created.'
    else
      render :new
    end
  end

  private

  def transaction_params
    params.require(:transaction).permit(:name, :description, :image, :price)
  end
end
