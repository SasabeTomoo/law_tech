class TransactionsController < ApplicationController
  before_action :set_transaction, only: [:show, :edit, :update, :destroy]

  def new
    @transaction = Transaction.new
  end
  def create
    @transaction = Transaction.new(transaction_params)
    @transaction.user_id = current_user.id
    # labelling = @transaction.labellings.create(label_id: params[:label_ids])
    if @transaction.save
      redirect_to transaction_path(@transaction.id), notice: "登録しました"
    else
      render :new
    end
  end

  def edit
  end
  def index
  end
  def show
    redirect_to sessions_new_path unless logged_in?
    @transaction = Transaction.find_by(id: @transaction.id)
  end
  def update
    if @transaction.update(transaction_params)
      redirect_to transaction_path(@transaction.id), notice: "編集しました"
    else
      render :edit
    end
  end
  def destroy
    @transaction.destroy
    redirect_to transactions_path, notice:"削除しました"
  end

  private
  def transaction_params
    params.require(:transaction).permit(:contact_date, :rent_adress, :rent_name, :deposit_amount, :return_date, :destination, :deadline, :user_id)
  end
  def set_transaction
    @transaction = Transaction.find(params[:id])
  end
end
