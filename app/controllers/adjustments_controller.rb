class AdjustmentsController < ApplicationController
  before_action :set_adjustment, only: [:show, :edit, :update, :destroy]
  # def step1
  #   @adjustment = Adjustment.new
  #   3.times { @adjustment.datails.build }
  # end
  #
  # def step2
  #   # step1で入力した値をsessionに保存
  #   # binding.irb
  #   # session[:item] = adjustment_params[:item]
  #   # session[:cost] = adjustment_params[:cost]
  #   # session[:category] = adjustment_params[:category]
  #   session[:datails_attributes] = adjustment_params[:datails_attributes]
  #   @adjustment = Adjustment.new
  #   3.times { @adjustment.datails.build }
  # end
  def index
    # binding.irb
    # lastはどうしようか迷い中（一つに絞らないとsumがおかしくなりそう）
    adjustment_number = current_user.adjustments.ids.last
    @cost_amount = Adjustment.find_by(id: adjustment_number).datails.sum(:cost)
  end
  def new
    # binding.irb
    @adjustment = Adjustment.new
    3.times { @adjustment.datails.build }
  end
  def create
    @adjustment = Adjustment.new(adjustment_params)
    @adjustment.user_id = current_user.id
    # @adjustment.datails.build(adjustment_params[:datails_attributes])
    render :new if params[:back]
    if @adjustment.save
      redirect_to adjustment_steps_path(@adjustment), notice: "登録しました"
    else
      render :new
    end
  end
  def edit
  end
  def show
    redirect_to sessions_new_path unless logged_in?
    @adjustment = Adjustment.find_by(id: @adjustment.id)
  end
  def update
    if @adjustment.update(adjustment_params)
      # redirect_to adjustment_steps_path(@adjustment), notice: "登録しました"
    else
      render :edit
    end
  end
  # 確認画面は実装難しいかも（ネストさせているモデルの影響？）
  def confirm
    @adjustment = Adjustment.new(adjustment_params)
    render :new if @adjustment.invalid?
  end
  def destroy
    @adjustment.destroy
    redirect_to adjustments_path, notice:"削除しました"
  end
  def calculation
    adjustment_params.merge(@adjustment.set_extra_information)
  end

  private
  # def adjustment_params
  #   params.require(:adjustment).permit(:item, :cost, :category, :cost_amount, :user_id)
  end
  def adjustment_params
    params.require(:adjustment).permit(
            :item,
            :cost,
            :category,
            :cost_amount,
            :user_id,
            :back,
            datails_attributes:[:id,
                                :item,
                                :cost,
                                :category,
                                :damage_reason,
                                :damage_cost,
                                :rent_quantity,
                                :my_quantity,
                                :unit,
                                :burden_reason,
                                :burden_percentage,
                                :burden_cost,
                                :equipment_name,
                                :service_year,
                                :first_value,
                                :rent_year,
                                :de_burden_percentage,
                                :degradation_cost,
                                :adjustment_id])
  end
  def set_adjustment
    @adjustment = Adjustment.find(params[:id])
  end
