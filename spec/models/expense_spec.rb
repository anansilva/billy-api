require 'rails_helper'

RSpec.describe Expense, type: :model do
  subject do
    described_class.new(
      amount: 1,
      expense_date: Date.today,
      description: 'dummy',
      category: 1
    )
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without an amount' do
    subject.amount = nil
    expect(subject).not_to be_valid
  end
end
