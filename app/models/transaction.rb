class Transaction < ApplicationRecord
  belongs_to :user
  validates :user_name, presence: true, length: { maximum: 30 }
  validates :user_adress, presence: true, length: { maximum: 255 }
  validates :rent_adress, presence: true, length: { maximum: 255 }
  validates :rent_name, presence: true, length: { maximum: 30 }
  validates :destination, presence: true, length: { maximum: 255 }
  validates :deadline, numericality: {only_integer: true}
  validates :deposit_amount, numericality: {only_integer: true}
  validates :return_deposit, numericality: {only_integer: true}
end
