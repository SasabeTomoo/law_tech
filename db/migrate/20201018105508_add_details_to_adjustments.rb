class AddDetailsToAdjustments < ActiveRecord::Migration[5.2]
  def change
    add_column :adjustments, :damage_reason, :text
    add_column :adjustments, :damage_cost, :integer
    add_column :adjustments, :rent_quantity, :float
    add_column :adjustments, :my_quantity, :float
    add_column :adjustments, :unit, :string
    add_column :adjustments, :burden_reason, :text
    add_column :adjustments, :burden_percentage, :float
    add_column :adjustments, :burden_cost, :integer
    add_column :adjustments, :equipment_name, :string
    add_column :adjustments, :service_year, :float
    add_column :adjustments, :first_value, :float
    add_column :adjustments, :rent_year, :float
    add_column :adjustments, :de_burden_percentage, :float
    add_column :adjustments, :degradation_cost, :integer
  end
end
