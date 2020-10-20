class Adjustment < ApplicationRecord
  belongs_to :user
  has_many :datails, dependent: :destroy
  accepts_nested_attributes_for :datails
  def burden_cost
    cost / damage_cost
  end
  def set_extra_information
  {:burden_cost => burden_cost }
  end
end
