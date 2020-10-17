class Adjustment < ApplicationRecord
  belongs_to :user
  has_many :datails, dependent: :destroy
  accepts_nested_attributes_for :datails
end
