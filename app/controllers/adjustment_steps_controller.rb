class AdjustmentStepsController < ApplicationController
  include Wicked::Wizard
  steps :second, :third, :fourth, :fifth

  def show
    @adjustment = Adjustment.where(user_id:current_user.id).last
    # binding.irb
    if params[:search].present?
      @samples = Sample.where(category: params[:search])
      @usual_samples = @samples.where(field: "usual")
      @unusual_samples = @samples.where(field: "unusual")
    else
      @samples = Sample.where(category: "1.床（畳、フローリング、カーペットなど）")
      @usual_samples = @samples.where(field: "usual")
      @unusual_samples = @samples.where(field: "unusual")
    end
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
                                :adjustment_id,
                                :second
                                :third
                                :fourth
                                :fifth)
  end
end
