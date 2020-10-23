class Adjustment < ApplicationRecord
  belongs_to :user
  has_many :datails, dependent: :destroy
  accepts_nested_attributes_for :datails


  # 1. 工事が1つも登録されていない
  validate :require_any_datail
  def require_any_datail
    errors.add(:base, :no_datail) if datails.blank?
  end
end
