require 'rails_helper'

RSpec.describe Expense, type: :model do
  subject { described_class.new(amount: 1) }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without an amount' do
    subject.amount = nil
    expect(subject).not_to be_valid
  end
end
