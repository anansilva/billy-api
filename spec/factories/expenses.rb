FactoryBot.define do
  factory :expense do
    amount { 10.55 }
    expense_date { 1.day.ago }
  end
end
