class AddDetailssToAdjustments < ActiveRecord::Migration[5.2]
  def change
    add_column :adjustments, :second, :string
    add_column :adjustments, :third, :string
    add_column :adjustments, :fourth, :string
    add_column :adjustments, :fifth, :string
  end
end
