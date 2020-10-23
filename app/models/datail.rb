class Datail < ApplicationRecord
  belongs_to :adjustment, optional: true


  # validates :item, presence: true, length: { maximum: 30 }
  # validates :cost, numericality: {only_integer: true}
  # validates :damage_reason, length: { maximum: 255 }
  # validates :damage_cost, numericality: {only_integer: true}
  # validates :rent_quantity, numericality: {only_integer: true}
  # validates :my_quantity, numericality: {only_integer: true}
  # validates :unit, length: { maximum: 6 }
  # validates :burden_reason, length: { maximum: 255 }
  # validates :burden_cost, numericality: {only_integer: true}
  # validates :equipment_name, length: { maximum: 30 }
  # validates :service_year, numericality: {only_float: true}
  # validates :first_value, numericality: {only_float: true}
  # validates :rent_year, numericality: {only_float: true}
  # validates :de_burden_percentage, numericality: {only_float: true}
  # validates :degradation_cost, numericality: {only_integer: true}
end
