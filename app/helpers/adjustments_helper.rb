module AdjustmentsHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'create'
      confirm_adjustments_path
    elsif action_name == 'edit'
      adjustment_path
    end
  end
end
