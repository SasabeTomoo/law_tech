class AdjustmentStepsController < ApplicationController
  include Wicked::Wizard
  steps :second, :third, :fourth, :fifth

  def show
    @adjustment = Adjustment.where(user_id:current_user.id).last
    # binding.irb
    render_wizard
  end

  def update
    @adjustment = current_adjustment
    @adjustment.attributes = adjustment_params
    render_wizard @adjustment
  end

  private

  def finish_wizard_path
    adjustments_path(current_adjustment)
  end

  def current_adjustment
    Adjustment.find_by(id: session[:adjustment_id])
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
                                :dategory,
                                :adjustment_id])
  end
end
