class Expense < ApplicationRecord
  validates_presence_of :amount
end
