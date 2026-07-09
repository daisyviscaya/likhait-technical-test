class Expense < ApplicationRecord
  belongs_to :category

  validates :amount, numericality: { greater_than_or_equal_to: 0 }
  validates :description, presence: true
  validates :date, presence: true
end
