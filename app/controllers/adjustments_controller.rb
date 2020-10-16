class AdjustmentsController < ApplicationController
  before_action :set_adjustment, only: [:show, :edit, :update, :destroy]

  def new
    @adjustment = Adjustment.new
  end
  def create
    @adjustment = adjustment.new(adjustment_params)
    @adjustment.user_id = current_user.id
    # labelling = @adjustment.labellings.create(label_id: params[:label_ids])
    if @adjustment.save
      redirect_to adjustment_path(@adjustment.id), notice: "登録しました"
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
    @adjustment = Adjustment.find_by(_id: @feed.id)
  end
  def update
    if @adjustment.update(adjustment_params)
      redirect_to adjustment_path(@adjustment.id), notice: "編集しました"
    else
      render :edit
    end
  end
  def destroy
    @adjustment.destroy
    redirect_to adjustments_path, notice:"削除しました"
  end

  private
  def adjustment_params
    params.require(:adjustment).permit(:name, :content, :expired_at, :status, :priority, :user_id)
  end
  def set_adjustment
    @adjustment = adjustment.find(params[:id])
  end
end
