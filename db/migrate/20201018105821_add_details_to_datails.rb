class AddDetailsToDatails < ActiveRecord::Migration[5.2]
  def change
    add_column :datails, :damage_reason, :text
    add_column :datails, :damage_cost, :integer
    add_column :datails, :rent_quantity, :float
    add_column :datails, :my_quantity, :float
    add_column :datails, :unit, :string
    add_column :datails, :burden_reason, :text
    add_column :datails, :burden_percentage, :float
    add_column :datails, :burden_cost, :integer
    add_column :datails, :equipment_name, :string
    add_column :datails, :service_year, :float
    add_column :datails, :first_value, :float
    add_column :datails, :rent_year, :float
    add_column :datails, :de_burden_percentage, :float
    add_column :datails, :degradation_cost, :integer
  end
end
